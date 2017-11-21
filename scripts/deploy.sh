#!/bin/bash

commitId=$1
echo $commitId

if [[ -z "$commitId" ]]; then
  commitId=`git show --summary | grep commit | awk '{print $2}'`
fi
read -r -p "Are you sure to deply revision $commitId? [y/n] " response

exit
if [[ $response =~ ^[Yy]$ ]]; then
  aws deploy create-deployment \
    --application-name TestApp \
    --deployment-config-name CodeDeployDefault.OneAtATime \
    --deployment-group-name TestAppGroup \
    --github-location repository=chamchisand/codedeploy,commitId=$commitId
fi
