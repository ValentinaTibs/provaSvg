#!/bin/bash
# Closing script

mkdir git

git init

cp $1 ./git/$1
git add .
git commit -m "first"
rm ./git/$1

cp $2 ./git/$1

cd ./git
git diff >> ../$3
cd ..
rm -rf ./git

