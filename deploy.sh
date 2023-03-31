#!/bin/sh

echo "Switching to branch master"
git checkout master

echo "Building app"
npm run build

echo "Deploying files to server"
rsync -avP dist/ marlow@45.33.82.51:/var/www/marlow.pro/
echo "Deployment complete"