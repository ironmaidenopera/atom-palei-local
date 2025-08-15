#! /bin/bash
# a script to add new local git repo

# some variables to make it more flexible
#USER="ironmaidenopera"
#MAIL="oleksander.palii@gmail.com"
README="atom-palei-local"

# go to project directory
cd ~/GitHub
# set up repo folder
mkdir local
cd ~/GitHub/local/

# make a readme file
echo "# $README" >> README.md

# then configure .gitignore
echo "# ignore all pdf files" >> .gitignore
echo "*.pdf" >> .gitignore

# initialise current folder as local repo at branch main 
git init
# add and commit files
git add README.md .gitignore
git commit -m "first commit"
# set branch name to main
git branch -M main
echo 'local git added'

# sync with remote/online repository
git remote add origin https://github.com/ironmaidenopera/atom-palei-local.git
git push -u origin main 
echo 'local git synced with an online repo'