#!/bin/bash

wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
. ~/.nvm/nvm.sh
nvm install lts/carbon
npm i -g npm
npm i -g pm2
