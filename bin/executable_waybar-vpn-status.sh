#!/bin/bash

# Check for nordlynx
if ip link show nordlynx > /dev/null 2>&1; then
  country=$(nordvpn status | grep "Country:" | awk -F': ' '{print $2}')
  city=$(nordvpn status | grep "City:" | awk -F': ' '{print $2}')
  tooltip="NordVPN ($country/$city)"
# Check for tun0
elif ip link show tun0 > /dev/null 2>&1; then
  tooltip="OpenVPN"
# Check for wg0
elif ip link show wg0 > /dev/null 2>&1; then
  tooltip="Wireguard"
else
  tooltip="Not connected to VPN"
fi

# Output JSON
echo "{\"text\": \"󰖂\", \"tooltip\": \"${tooltip}\"}"

