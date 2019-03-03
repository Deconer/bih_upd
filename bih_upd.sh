systemctl stop bithost.service
wget https://github.com/nur0m/BitHost/releases/download/v1.0.1.0/bithost-linux-upgrade.tar.gz
tar xvzf bithost-linux-upgrade.tar.gz
cp ./bithostd /usr/local/bin/bithostd
rm ./bithostd
chmod +x /usr/local/bin/bithostd
cd ~/.bithost
rm banlist.dat
rm peers.dat
sed -i '/addnode=/d' bithost.conf
cat >> bithost.conf << nodes
addnode=159.65.115.39
addnode=159.65.125.97
addnode=46.101.231.11
addnode=104.248.21.75
addnode=46.101.158.15
addnode=138.68.78.67
addnode=46.101.138.222
addnode=207.154.238.141
addnode=104.248.242.105
addnode=159.89.29.196
addnode=45.76.87.135
addnode=138.68.93.94
addnode=138.68.85.117
addnode=138.68.93.159
addnode=138.68.85.163
addnode=138.68.93.6
addnode=138.68.93.151
addnode=139.59.130.222
addnode=46.101.218.115
addnode=207.154.249.20
addnode=139.59.142.208
nodes
systemctl start bithost.service
sleep 10
bithost-cli getblockcount
bithost-cli masternode status
