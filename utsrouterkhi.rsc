# jan/02/1970 00:25:22 by RouterOS 6.47.10
# software id = R3AC-AAWW
#
# model = RB941-2nD
# serial number = D1130FD936AB
/interface wireless
set [ find default-name=wlan1 ] ssid=MikroTik
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip pool
add name=dhcp_pool0 ranges=192.168.10.2-192.168.10.254
/ip dhcp-server
add address-pool=dhcp_pool0 disabled=no interface=ether2 name=dhcp1
/ip address
add address=192.168.10.1/24 interface=ether2 network=192.168.10.0
add address=13.13.13.3/24 interface=ether4 network=13.13.13.0
add address=15.15.15.3/24 interface=ether3 network=15.15.15.0
/ip dhcp-server network
add address=192.168.10.0/24 gateway=192.168.10.1
/routing rip interface
add receive=v1 send=v1
/routing rip neighbor
add address=13.13.13.2
add address=15.15.15.2
/routing rip network
add network=192.168.10.0/32
add network=13.13.13.0/32
add network=15.15.15.0/32
