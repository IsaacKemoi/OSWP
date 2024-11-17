#!/bin/bash

for channel in 1 6 11
do
  iw dev wlan0 set channel ${channel}
  sleep 1
done

