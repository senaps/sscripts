#!/usr/bin/env bash

echo "starting to activate pip"

if ! source env/bin/activate ; then
    cd ..
    source env/bin/activate
    cd code
fi

echo "starting to install the $1 on the env"

pip3 install $1 > /dev/null 2>&1

echo "starting to add the package to env"
pip3 freeze > requirements.txt

echo "starting to commit the thing"
git add requirements.txt > /dev/null 2>&1
git commit -m "updated the requirements with $1" > /dev/null 2>&1

echo "done"
