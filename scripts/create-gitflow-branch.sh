#!/bin/bash
# Usage: ./create-gitflow-branch.sh [feature|release|hotfix] branch-name

set -e

if [ $# -ne 2 ]; then
  echo "Usage: $0 [feature|release|hotfix] branch-name"
  exit 1
fi

TYPE=$1
NAME=$2

if [[ ! "$TYPE" =~ ^(feature|release|hotfix)$ ]]; then
  echo "Type must be one of: feature, release, hotfix"
  exit 1
fi

BASE=develop
[ "$TYPE" = "hotfix" ] && BASE=main
[ "$TYPE" = "release" ] && BASE=develop

git fetch origin
git checkout $BASE
git pull origin $BASE
git checkout -b "$TYPE/$NAME"
echo "Created branch: $TYPE/$NAME from $BASE"