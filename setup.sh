#bin/bash
apt-get update

#node/npm
curl -sL https://deb.nodesource.com/setup_14.x | bash -
apt-get install -y nodejs

#cypress
apt-get install libgtk2.0-0 libgtk-3-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb -y
npm install -g cypress --unsafe-perm --silent