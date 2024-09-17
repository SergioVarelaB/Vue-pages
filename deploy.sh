#!/usr/bin/env sh

set -e

npm run build

cd dist

git init

git checkout -b gh-pages

git add -A
git commit -m "New Deployment"
git push -f git@github.com:SergioVarelaB/Vue-pages.git master:gh-pages

cd -