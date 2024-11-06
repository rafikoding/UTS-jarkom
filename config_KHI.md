**Config KHI**

interface Eth1
 ip address 192.168.10.2 255.255.255.0
 no shutdown

interface Tunnel0
 ip address 20.20.20.2 255.255.255.252
 tunnel source 192.168.10.2
 tunnel destination 192.168.10.3
 tunnel mode ipip

interface Eth2
 ip address 192.168.2.1 255.255.255.0
 no shutdown

ip route 192.168.1.0 255.255.255.0 20.20.20.1
ip route 192.168.3.0 255.255.255.0 20.20.20.3

**Config SWITCH KHI**

interface range fa0/1 - 24
 switchport mode access
 switchport access vlan 2

vlan 2
 name Lab_Praktikum_HI

