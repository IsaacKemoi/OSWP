#!/bin/bash

for channel in 1 2 3 4 5 6 7 8 9 10 11 12 13 14
do
  iw dev wlan0 set channel ${channel}
  sleep 1
done

