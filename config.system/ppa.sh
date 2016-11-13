# Git - http://git-scm.com
sudo add-apt-repository -y ppa:git-core/ppa

# Google Chrome Browser - http://www.google.com/linuxrepositories/
sudo wget -q https://dl-ssl.google.com/linux/linux_signing_key.pub -O- | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

# LibreOffice PPA - http://www.documentfoundation.org/download/
sudo add-apt-repository -y ppa:libreoffice/ppa

# VirtualBox - http://www.virtualbox.org
sudo wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -c -s) contrib" >> /etc/apt/sources.list.d/virtualbox.list'

# Nginx - http://nginx.org
sudo wget -q http://nginx.org/keys/nginx_signing.key -O- | sudo apt-key add -
sudo sh -c 'echo "deb http://nginx.org/packages/ubuntu/ $(lsb_release -c -s) nginx" >> /etc/apt/sources.list.d/nginx.list'

# Nodejs - https://nodejs.org
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

# youtube-dl - https://rg3.github.io/youtube-dl
sudo curl https://yt-dl.org/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

# byobu - http://byobu.co 
sudo add-apt-repository -y ppa:byobu/ppa

# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# postgresql - http://www.postgresql.org
echo deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -c -s)-pgdg main | sudo tee /etc/apt/source.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
