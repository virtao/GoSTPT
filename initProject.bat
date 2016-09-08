rem @echo off
if [%1]==[] (
echo "Usage: initProject.bat <ProjectName>"
goto :EOF
)

ren ProjectTemplate.sublime-project %1.sublime-project
del /q /s /f .git
del initProject.*

