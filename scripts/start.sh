#!/bin/bash

cd /var/app
npm install
pm2 start app.js
