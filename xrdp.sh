echo "Download ngrok"
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
read -p "Ctrl + V Authtoken: " CRP 
./ngrok authtoken $CRP 
nohup ./ngrok tcp -region=ap 3389 &>/dev/null &
echo Downloading File From akuh.net
sudo apt install -y xfce4 xfce4-goodies
sudo apt-get install -y xrdp
echo xfce4-session >~/.xsession
sudo service xrdp start
apt-get install -y xfonts-100dpi xfonts-100dpi-transcoded xfonts-75dpi xfonts-75dpi-transcoded xfonts-base
apt-get install -y tightvncserver
tightvncserver :1
echo "===================================="
echo "server is running"
echo "===================================="
