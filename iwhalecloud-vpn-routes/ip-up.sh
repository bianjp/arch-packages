#!/bin/bash
# 连接浩鲸科技 VPN 后自动设置路由

sleep 3

# 找出 VPN 客户端 IP
gateway=$(ip route list | grep ' dev ppp' | head -n1 | cut -d' ' -f1)
# 不是浩鲸科技 VPN 时不处理
if [[ "$gateway" != 10.* && "$gateway" != 172.* ]]; then
  exit
fi

# 浩鲸科技内网 IP 段
subnets=(
  '10.10.0.0/16'
  '10.20.0.0/16'
  '10.45.0.0/16'
  '172.16.0.0/16'
  '172.18.0.0/16'
  '172.20.0.0/16'
  '172.21.0.0/16'
)

# 配置内网 IP 段走 VPN
for subnet in "${subnets[@]}"; do
  ip route add $subnet via $gateway
done
