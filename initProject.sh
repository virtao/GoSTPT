#! /bin/sh

if [ ! -n "$1" ] ;then
    echo "Usage: initProject.sh <ProjectName>"
    exit
fi

mv ProjectTemplate.sublime-project $1.sublime-project
rm -rf .git
rm -rf initProject.*
