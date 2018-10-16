#!/bin/bash
clear
apt-get update
apt-get -qy upgrade
apt autoremove

# INSTALL BASIC APPs.
echo "INSTALL BASIC APPs."
apt-get -qy install terminator htop nethogs gedit vim openssh-server aptitude tor rar unrar
echo -e '\033[01;32mDone \033[00;37m'

# GERING Keys SSH
echo "GERING Keys SSH"
ssh-keygen -t rsa -b 4046 -C "| $(hostname) |"
touch /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys
chmod 400 /root/.ssh/id_rsa
echo -e '\033[01;32mDone \033[00;37m'

# Managing directories
echo -e '\033[01;34m[*] APAGANDO DIRETORIOS \033[00;37m' 
rm -rf /root/Music/
rm -rf /root/Public/
rm -rf /root/Pictures/
rm -rf /root/Videos/
rm -rf /root/Templates/
mkdir /root/s37d3vnull
mkdir /root/s37d3vnull/conf-S37d3vnull
mkdir /root/s37d3vnull/cmd
cd /root/s37d3vnull
echo -e '\033[01;32mDone \033[00;37m'

# INSTALL HANDSHAKER - Detect, deauth, capture, crack WPA/2 handshakes and WEP keys.
echo "INSTALL HANDSHAKER - Detect, deauth, capture, crack WPA/2 handshakes and WEP keys."
git clone https://github.com/d4rkcat/HandShaker handShaker
echo -e '\033[01;32mDone \033[00;37m'

# INSTALL WPScan - Black box WordPress vulnerability scanner.
echo "INSTALL WPScan - Black box WordPress vulnerability scanner."
git clone https://github.com/wpscanteam/wpscan wpscan
cd wpscan 
./wpscan.rb --update
cd ..
echo -e '\033[01;32mDone \033[00;37m'

# INSTALL SQLMap - Automatic SQL injection and database takeover tool.
echo "INSTALL SQLMap - Automatic SQL injection and database takeover tool." 
git clone https://github.com/sqlmapproject/sqlmap sqlmap
cd sqlmap
./sqlmap.py --update
cd ..
echo -e '\033[01;32mDone \033[00;37m'

# INSTALL Fake AP - Create fake AP in Kali with 1 command.
echo "INSTALL Fake AP - Create fake AP in Kali with 1 command."
git clone https://github.com/DanMcInerney/fakeAP fakeAP
echo -e '\033[01;32mDone \033[00;37m'

# INSTALL Panoptic - Tool that automates the process of search and retrieval of content for common log and config files through path traversal vulnerabilities.
echo "INSTALL Panoptic - Tool that automates the process of search and retrieval of content for common log and config files through path traversal vulnerabilities."
git clone https://github.com/lightos/Panoptic panoptic
echo -e '\033[01;32mDone \033[00;37m'

# INSTALL SET - Social-Engineer Toolkit (SET).
echo "INSTALL SET - Social-Engineer Toolkit (SET)."
apt-get --force-yes -y install git apache2 python-requests libapache2-mod-php python-pymssql build-essential python-pexpect python-pefile python-crypto python-openssl
git clone https://github.com/trustedsec/social-engineer-toolkit/ set/
cd set/
python setup.py install
cd ..
echo -e '\033[01;32mDone \033[00;37m'

# INSTALL MITMf - Framework for Man-In-The-Middle attacks
echo "INSTALL MITMf - Framework for Man-In-The-Middle attacks"
apt-get install python-dev python-setuptools libpcap0.8-dev libnetfilter-queue-dev libssl-dev libjpeg-dev libxml2-dev libxslt1-dev libcapstone3 libcapstone-dev libffi-dev file
pip install virtualenvwrapper
echo "source /usr/local/bin/virtualenvwrapper.sh" >> /root/.bashrc
source /root/.bashrc
mkvirtualenv MITMf -p /usr/bin/python2.7
git clone https://github.com/byt3bl33d3r/MITMf mitmF
cd mitmF && git submodule init && git submodule update --recursive
pip install -r requirements.txt
pip install python-magic
pip install dnslib
pip install pyyaml ua-parser user-agents
cd ..
echo -e '\033[01;32mDone \033[00;37m'

# INSTALL Delorean - NTP Main-in-the-Middle tool.
echo "INSTALL Delorean - NTP Main-in-the-Middle tool."
git clone https://github.com/PentesterES/Delorean delorean
touch delorean/nat_firewall.sh
echo "#!/bin/bash
echo 1 > /proc/sys/net/ipv4/ip_forward
iptables -A PREROUTING -t nat -p udp --destination-port 123 -j REDIRECT --to-port 123
#iptables -A PREROUTING -t nat -p tcp --destination-port 80 -j REDIRECT --to-port 10000" > delorean/nat_firewall.sh
chmod a+x delorean/nat_firewall.sh
echo -e '\033[01;32mDone \033[00;37m'

# INSTALL Veil-Evasion - Tool designed to generate metasploit payloads that bypass common anti-virus solutions.
echo "INSTALL Veil-Evasion - Tool designed to generate metasploit payloads that bypass common anti-virus solutions."
git clone https://github.com/Veil-Framework/Veil.git
cd Veil/
cd setup
sudo ./setup.sh -c
cd ../../
echo -e '\033[01;32mDone \033[00;37m'

# # CREATE S37D3VNULL alias in .bashrc.
# echo "CREATE S37D3VNULL alias in .bashrc."
# echo "
# # ==============    ALIAS S37D3VNULL ==========================

# alias publicip='wget http://ipinfo.io/ip -qO -'
# alias publicip-60='watch -n 60 wget http://ipinfo.io/ip -qO -'
# alias install-panoptic='cd /root && git clone https://github.com/lightos/panoptic.git'
# alias install-sqlmap='cd /root && git clone https://github.com/sqlmapproject/sqlmap.git'
# alias term='gnome-terminal &'
# alias set_ipforward='echo 1 > /proc/sys/net/ipv4/ip_forward'
# " >> ~/.bashrc
# source ~/.bashrc
# echo -e '\033[01;32mDone \033[00;37m'

#openvas
#nessus
# 1) Disable screen lock 
apt autoremove
: '
ESTILOS
00: Nenhum
01: Negrito
04: Sublinhado
05: Piscante
07: Reverso
08: Oculto 

CORES DE TEXTO
30: Preto
31: Vermelho
32: Verde
33: Amarelo
34: Azul
35: Magenta (Rosa)
36: Ciano (Azul Ciano)
37: Branco 

CORES DE FUNDO
40: Preto
41: Vermelho
42: Verde
43: Amarelo
44: Azul
45: Magenta (Rosa)
46: Ciano (Azul Ciano)
47: Branco '
 