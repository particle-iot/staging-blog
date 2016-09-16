#!/bin/bash

if [[ $TRAVIS_BRANCH == 'staging' ]]
then
  bundle exec rake site:staging
  echo "Deploying to staging: http://spark.github.io/staging-blog"
elif [[ $TRAVIS_BRANCH == 'production' ]]
then
  bundle exec rake site:publish
  echo "Deploying to blog.particle.io"
else
  echo "Nothing to do here!"
fi
