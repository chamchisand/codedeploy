#!/bin/bash

commitId=$1
echo $commitId

if [[ -z "$commitId" ]]; then
  commitId=`git show --summary | grep commit | awk '{print $2}'`
fi
read -r -p "Are you sure to deploy revision $commitId? [y/n] " response

if [[ $response =~ ^[Yy]$ ]]; then
  aws deploy create-deployment \
    --application-name Simple \
    --deployment-config-name CodeDeployDefault.OneAtATime \
    --deployment-group-name Simple \
    --github-location repository=chamchisand/codedeploy,commitId=$commitId
fi
