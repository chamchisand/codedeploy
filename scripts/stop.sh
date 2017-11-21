#!/bin/bash

if [[ -n "$(pgrep node)" ]]; then
  pm2 stop all
fi
