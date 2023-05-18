#!/bin/bash

# Get the output of 'ip link'
ip_link_output=$(ip link)

# Check for nordlynx
if echo "$ip_link_output" | rg -q 'nordlynx'; then
  country=$(nordvpn status | grep "Country:" | awk -F': ' '{print $2}')
  city=$(nordvpn status | grep "City:" | awk -F': ' '{print $2}')
  tooltip="NordVPN ($country/$city)"
# Check for tun0
elif echo "$ip_link_output" | rg -q 'tun0'; then
  tooltip="OpenVPN"
# Check for wg0
elif echo "$ip_link_output" | rg -q 'wg0'; then
  tooltip="Wireguard"
else
  tooltip="Not connected to VPN"
fi

# Output JSON
echo "{\"text\": \"󰖂\", \"tooltip\": \"${tooltip}\"}"
