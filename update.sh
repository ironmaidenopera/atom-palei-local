#!/bin/bash
# this is a script that runs commits pushes them online
set -e			# exit on error
git add .		# stage all files but .gitignore
git commit -m "$1"	# create a commit with a meassage 
			# passed on script run; else aborts
git push origin main	# push commits to the remote origin 
			# branch main
