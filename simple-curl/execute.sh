#!/usr/bin/env bash

# $CI_BRANCH is set based on the branch being run in continuous integration
if [[ "$CI_BRANCH" == "develop" ]]; then
  # Deploy to dev
  curl "$DEVELOP_DEPLOY_LINK"
  exit 0;
elif [[ "$CI_BRANCH" == "master" ]]; then
  # Deploy to prod
  curl "$MASTER_DEPLOY_LINK"
  exit 0;
fi

# Nothing deployed
exit 0;
