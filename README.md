
# internet-boring

A Linux machine configuration for Internet Monitoring 
Using this small script you can monitor your internet speed and ping periodically.
## Features
Simple and easy-to-use script. That you need to put in your server.

    1. Small script 
    2. Able to monitor your internet
    3. Give you a clean output periodically 
## How to install this script

   1. install the speedtest from the below command:  
    sudo apt-get install curl
    curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
    sudo apt-get install speedtest

   2. Download the script.sh and result.txt in /tmp dir
   3. Give executable permission to the script.sh using below command
    sudo chmod+x script.sh
   4. Add a crontab entry using the below command:
    */5 * * * * /tmp/script.sh    
## Working of Script

This script is taking speedtest -- simple and date data and stores that in a file name speedtest.txt and date.txt

That data is now further cleaned and added to the result.txt file. 
## Future Plan

1. Add more automation so the user does not need to create the result and crontab entry.
2. If the speed test server is busy then it will skip that test and try again.
3. Rounding off the number to make the more clean output
4. Adding this data to Grafana
