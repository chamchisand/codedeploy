#!/bin/bash

if [[ -n "$(pgrep node)" ]]; then
  . ~/.nvm/nvm.sh
  nvm use lts/carbon
  pm2 stop all
fi
