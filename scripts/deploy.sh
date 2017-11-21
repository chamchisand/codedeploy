#!/bin/bash

commit=`git show --summary | grep commit | awk '{print $2}'`
read -r -p "Are you sure to update PRODUCTION with $commit? [y/n] " response

if [[ $response =~ ^[Yy]$ ]]; then
  aws deploy create-deployment \
    --application-name TestApp \
    --deployment-config-name CodeDeployDefault.OneAtATime \
    --deployment-group-name TestAppGroup \
    --github-location repository=chamchisand/codedeploy,commitId=$commit
fi
