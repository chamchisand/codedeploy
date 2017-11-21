#!/bin/bash

wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 8.9.1
npm i pm2@latest -g
