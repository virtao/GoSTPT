#! /bin/sh

if [ ! -n "$1" ]; then
    echo "Usage: initProject.sh <ProjectName> [GitHost UserName]"
    exit
fi

mv ProjectTemplate.sublime-project $1.sublime-project
sed -i "s/ProjectName/$1/g" src/GitHost/UserName/ProjectName/gitignore
mv src/GitHost/UserName/ProjectName/gitignore src/GitHost/UserName/ProjectName/.gitignore
mv src/GitHost/UserName/ProjectName/ProjectName.iml src/GitHost/UserName/ProjectName/$1.iml
mv src/GitHost/UserName/ProjectName/ src/GitHost/UserName/$1/

if [ -n "$2" ] && [ -n "$3" ]; then
	mv src/GitHost/UserName/ src/GitHost/$3/
	mv src/GitHost/ src/$2/
fi

rm -rf .git
rm -rf initProject.*
