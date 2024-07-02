#!/bin/bash

# Navigate to the project directory
cd /home/ubuntu/strapi-project

# Stop the existing Strapi instance
pm2 stop strapi || true

# Pull the latest code from the repository
git pull origin main

# Install dependencies
npm install

# Build the project
npm run build

# Start the Strapi server with PM2
pm2 start npm --name strapi -- start
