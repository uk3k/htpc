#!/bin/bash
#generate network configs 

if [ "$static_ip" = "true" ]
then

if [ "$wifi_configured" = "true" ]
	then
		ssid=$(cat /etc/network/interfaces | grep wpa-ssid)
		key=$(cat /etc/network/interfaces | grep wpa-psk)
fi	

mv /etc/network/interfaces /etc/network/interfaces.bak
cat > /etc/network/interfaces <<interfaces
##interface generated by kodi-install-script!

auto lo
iface lo inet loopback

###$primary_iface IPv4 static configuration
auto $primary_iface

iface $primary_iface inet static	
	address $ip_addr
	netmask $netmask
	gateway $gateway
	dns-nameservers $dns1 $dns2
interfaces

fi
