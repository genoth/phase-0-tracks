** Making updates with a feature branch**
[make some changes]
git add .
git commit -m “meaningful message”
git push origin branch-name
[open pull request in github, and merge feature branch to master in GitHub]
git checkout master
git pull origin master
git branch -d branch-name