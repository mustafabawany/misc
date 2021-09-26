#Installing VS CODE
echo "Installing VS Code"
sudo snap install --classic code


#For Dropbox (Optional)
echo "Installing Dropbox"
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86" | tar xzf -
~/.dropbox-dist/dropboxd


#Installing curl and git
echo "Installing curl and git"
sudo apt-get install -qq curl git > /dev/null


#Installing Node JS
echo "Installing Node.js"
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -qq nodejs

#Installing NPM Packages
echo "Installing npm"
sudo apt install npm

#Installing Nodemon
echo "Installing nodemon"
npm install -g nodemon

#Installing MongoDB
echo "Installing MongoDB"
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
/etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org

