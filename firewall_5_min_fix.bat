netsh advfirewall firewall delete rule name=all
netsh advfirewall set allprofiles state on
netsh advfirewall set allprofiles firewallpolicy blockinbound,blockoutbound

netsh advfirewall firewall add rule protocol=icmpv4:8,any action=allow name=pingin dir=in
netsh advfirewall firewall add rule protocol=icmpv4:8,any action=allow name=pingout dir=out

netsh advfirewall firewall add rule remoteip=127.0.0.1/8 action=allow name=loopin dir=in
netsh advfirewall firewall add rule remoteip=127.0.0.1/8 action=allow name=loopout dir=out

netsh advfirewall firewall add rule protocol=udp remoteport=53 action=allow dir=in name=dnsin
netsh advfirewall firewall add rule protocol=udp remoteport=53 action=allow dir=out name=dnsout

netsh advfirewall firewall add rule protocol=tcp program=”<firefox location>” remoteport=80,443 action=allow dir=in name=firein
netsh advfirewall firewall add rule protocol=tcp program=”<firefox location>” remoteport=80,443 action=allow dir=out name=fireout
