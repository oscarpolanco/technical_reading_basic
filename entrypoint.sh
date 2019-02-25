#!/bin/sh

set -e

cd $BUILD_DIR

echo "#################################################"
echo "Now deploying to GitHub Pages..."
npm install && \
npm run build && \
REMOTE_REPO="https://c55cc76c1908b9a2f361dd31dfb75358dfa4fd3a@github.com/oscarpolanco/technical_reading_basic.git" && \
git init && \
git config --global user.name "Oscar Polanco" && \
git config --global user.email "opolanco@intellisys.com.do" && \
git remote add origin "${REMOTE_REPO}" && \
npm run deploy && \
rm -rf .git && \
echo "Deployed"