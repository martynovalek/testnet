#!/bin/bash

curl -s $(wget -qO- eth0.me):9002/incentivecash | jq -r .response.uid > $HOME/minima_uid.txt
sleep 3
sudo systemctl restart minima_9001
sleep 180
kill -TERM $(pgrep cpulimit)
sleep 2
sudo cpulimit -b -p $(pgrep java) -l 10 ; cd
sleep 5
curl 127.0.0.1:9002/incentivecash+uid:$(cat $HOME/minima_uid.txt)
