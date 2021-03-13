cd ~
curl -sL https://deb.nodesource.com/setup_13.x -o nodesource_setup.sh
#nano nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt-get install nodejs
nodejs -v
npm -v
sudo apt-get install build-essential
sudo apt-get install git
git clone git://github.com/askmike/gekko.git -b stable
cd gekko
npm install --only=production
cd exchange
npm install --only=production
cd ..
npm install sqlite3@


