#!/bin/sh

echo ""
echo ""
echo "*************************************"
echo "*        Network Setup Script       *"
echo "*************************************"

echo ""
echo ""
echo "Enter Port Number to forward:"
read port
echo ""
echo ""
echo "Forwarding Port $port to Network Devices"
echo ""
echo ""

echo "rdr pass inet proto tcp from any to any port $port -> 127.0.0.1 port $port" | sudo pfctl -ef -

echo ""
echo ""
echo "Press any Button to stop script"

read

echo ""
echo ""
echo ""
echo "Removing Port Forwarding Rule"

sudo pfctl -F all -f /etc/pf.conf
