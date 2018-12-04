#!/usr/bin/bash

sleep 3

gateway=$(ip route list | grep ' dev ppp' | cut -d' ' -f1)

if [[ ! "$gateway" = 10.45.* ]]; then
  exit
fi

subnets=(
  '10.45.0.0/16'
  '172.16.0.0/16'
  '172.18.0.0/16'
  '172.20.0.0/16'
)

for subnet in "${subnets[@]}"; do
  ip route add $subnet via $gateway
done
