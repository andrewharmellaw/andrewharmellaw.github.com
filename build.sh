#!/bin/bash

# only proceed script when started not by pull request (PR)
if [ $TRAVIS_PULL_REQUEST == "true" ]; then
  echo "this is a PR, exiting"
  exit 0
fi

# enable error reporting to the console
set -e

# build site with jekyll, by default to `_site' folder
#jekyll build

# cleanup
#rm -rf ../andrewharmellaw.github.io.master

#clone `master' branch of the repository using encrypted GH_TOKEN for authentification
#git clone git@github.com:andrewharmellaw/andrewharmellaw.github.com.git ../andrewharmellaw.github.io.master

# copy generated HTML site to `master' branch
cp -R _site/* ../temp/andrewharmellaw.github.io.master

# commit and push generated content to `master' branch
# since repository was cloned in write mode with token auth - we can push there
cd ../temp/andrewharmellaw.github.io.master
git add -A .
git commit -a -m "Publishing the latest site from the gh-pages branch."
git push --quiet origin master  
cd ../../andrewharmellaw.github.com
