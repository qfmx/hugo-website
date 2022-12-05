@echo off 
hugo -D
git add .
git commit -m "update blog"
git push
pause 