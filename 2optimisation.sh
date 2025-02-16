# /etc/sysctl.d/90-vpn-optimization.conf
net.core.rmem_max=2500000
net.core.wmem_max=2500000
net.ipv4.tcp_congestion_control=bbr
net.ipv4.tcp_fastopen=3
net.ipv4.tcp_tw_reuse=1
net.ipv4.tcp_mtu_probing=1
net.ipv4.udp_rmem_min=131072
net.ipv4.udp_wmem_min=131072
