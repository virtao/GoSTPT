#! /bin/sh

if [ ! -n "$1" ]; then
    echo "Usage: initProject.sh <ProjectName> [GitHost UserName]"
    exit
fi

mv ProjectTemplate.sublime-project $1.sublime-project
sed -i "s/ProjectName/$1/g" src/github.com/UserName/ProjectName/gitignore
mv src/github.com/UserName/ProjectName/gitignore src/github.com/UserName/ProjectName/.gitignore
mv src/github.com/UserName/ProjectName/ProjectName.iml src/github.com/UserName/ProjectName/$1.iml
mv src/github.com/UserName/ProjectName/ src/github.com/UserName/$1/

if [ -n "$2" ] && [ -n "$3" ]; then
	mv src/github.com/UserName/ src/github.com/$3/
	mv src/github.com/ src/$2/
fi

rm -rf .git
rm -rf initProject.*
