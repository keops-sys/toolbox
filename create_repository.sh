#!/bin/bash

# Prompt for folder name
read -p "Enter folder name: " folder_name

# Prompt for GitHub repository name
read -p "Enter GitHub repository name: " repo_name

# Create folder and navigate into it
mkdir $folder_name
cd $folder_name

# Initialize git repository
git init

# Create a sample README file
echo "# $repo_name" > README.md

# Add all files to git
git add .

# Commit changes
git commit -m "Initial commit"



# Create repository on GitHub using GitHub CLI
# If you don't have GitHub CLI installed, you'll need to create the repository manually on GitHub
gh repo create $repo_name --public --confirm

# Add GitHub repository as remote
git remote add origin https://github.com/keops-sys/$repo_name.git

# Push to GitHub
git push -u origin main

echo "Repository created and code pushed to GitHub successfully!"