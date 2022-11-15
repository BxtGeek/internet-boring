#!/bin/bash
speedtest --simple > /tmp/speedtest.txt
date > /tmp/date.txt
awk '{print "|"$1,$2,$3,$6" ""|"}' ORS=' ' date.txt >> /tmp/result.txt
awk '{print $4,$5" "" ""|"}' ORS=' ' date.txt >> /tmp/result.txt
awk '{print $2,$3"|"}'  ORS=' ' speedtest.txt >> /tmp/result.txt
printf "\n+----------------+---------------+----------+-------------+-------------+\n" >> /tmp/result.txt
