re=$(grep -m1 -i "com.netease.cloudmusic" /data/system/packages.list | cut -d' ' -f2)
iptables -t nat -A OUTPUT -p tcp -m owner --uid-owner $re -m tcp --dport 80 -j DNAT --to 192.168.1.101:8080
iptables -t nat -A OUTPUT -p tcp -m owner --uid-owner $re -m tcp --dport 443 -j DNAT --to 192.168.1.101:8443