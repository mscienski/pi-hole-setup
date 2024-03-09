#!/bin/bash

ip link add name br0 type bridge
ip link set dev br0 up
ip address add 192.168.86.39/24 dev br0
ip route append default via 192.168.86.1 dev br0

ip link set eth1 master br0
ip link set eth0 master br0
ip address del 192.168.86.39/24 dev eth0
