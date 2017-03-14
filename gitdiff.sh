#!/bin/bash
# Closing script

mkdir git

git init

cp $1 ./git/$1
git add .
git commit -m "first"
rm $1

cp $2 ./git/$1
git add .
git commit -m "second"

cd ./git
git diff >> gitdiff
cd ..

