#!/bin/bash

# Update system
sudo apt update -y

# Install Node.js and npm using nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh"
nvm install 18
nvm use 18

# Install pm2 globally
npm install -g pm2

# Navigate to the Strapi project directory
cd /home/ubuntu/strapi-app 

# Install project dependencies
npm install

# Build the Strapi project
npm run build

# Start the Strapi application with pm2
pm2 start npm --name "strapi-app" -- run start

# Save the pm2 process list
pm2 save

# Setup pm2 to start on boot
pm2 startup
