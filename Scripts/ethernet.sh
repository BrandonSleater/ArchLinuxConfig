#!/bin/sh

ip link set up dev enp0s25
ip addr add 192.168.123.100/24 dev enp0s25
