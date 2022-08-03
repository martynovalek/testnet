#!/bin/bash

sudo systemctl restart minima_9001
# curl -s $(wget -qO- eth0.me):9002/incentivecash | jq -r .response.uid > $HOME/minima_uid.txt
sleep 180
# kill -TERM $(pgrep cpulimit)
# sleep 2
# sudo cpulimit -b -p $(pgrep java) -l 10 && \ 
# cd $HOME
# sleep 5
curl 127.0.0.1:9002/incentivecash+uid:$(cat $HOME/minima_uid.txt)
