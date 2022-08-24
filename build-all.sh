#!/usr/bin/env bash

echo "============================"
echo "Building the application ..."
echo "============================"
echo " "

pushd ../site/beebee.web.spa/ClientApp/
rm -rf build/
npm run build
popd

echo " "
echo "====================="
echo "Building the blog ..."
echo "====================="
echo " "

pushd blog/
rm -rf _site/
bundle exec jekyll build
popd

echo " "
echo "============================="
echo "Building the help content ..."
echo "============================="
echo " "

pushd help/
rm -rf _site/
bundle exec jekyll build
popd

echo " "
echo "====================="
echo "Cleaning docs/ folder"
echo "====================="
echo " "

rm -rf docs/
mkdir docs/
echo beebee.social > docs/CNAME

echo " "
echo "============================="
echo "Copying static files to docs/"
echo "============================="
echo " "

pushd docs/
cp -R ../../site/beebee.web.spa/ClientApp/build/ ./
mkdir blog/
cp -R ../blog/_site/ blog/
mkdir help/
cp -R ../help/_site/ help/
popd

echo " "
echo "=============================="
echo "Copying mock api data to docs/"
echo "=============================="
echo " "

pushd docs/
mkdir api/
cp -R ../api/ api/
popd

echo " "
echo "Done."
echo " "
