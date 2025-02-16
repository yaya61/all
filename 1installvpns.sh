#!/bin/bash
# vpn-install.sh

# Mise à jour système
sudo apt update && sudo apt full-upgrade -y

# Installation des paquets requis
sudo apt install -y wireguard openvpn shadowsocks-libev xray python3-pip iptables ufw net-tools qrencode resolvconf

# Désactivation des services inutiles
sudo systemctl stop bluetooth ModemManager thermald
sudo systemctl disable bluetooth ModemManager thermald

# Configuration du swappiness
echo "vm.swappiness=10" | sudo tee /etc/sysctl.d/99-vpn.conf
