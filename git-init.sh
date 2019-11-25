#!/bin/bash
# git repository initialization script
git init                            # initialize git
git add .                           # track all files
git add -u                          # track deletes
read -r -p 'Github repository: ' repo  # prompt user for Github repository
git remote add origin $repo         # add remote repository

