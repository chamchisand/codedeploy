#!/bin/bash

usage() {
  echo "Usage: $0 [-p parameters]"
  exit 1
}

while getopts ":p:" o; do
  case "$o" in
    p) parameters="$OPTARG" ;;
    *) usage ;;
  esac
done

cloudformation deploy \
  --template-file ./cf.yaml \
  --stack-name simple \
  --s3-bucket simple-dev \
  --capabilities CAPABILITY_IAM
  --parameter-overrides $parameters
