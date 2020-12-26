cd ~/research/covid-19/

# Add all files to the repository with respect to .gitignore rules
git add .

# Commit changes with message with current date stamp
git commit -m "Remote update at `date +'%Y-%m-%d %H:%M:%S'`"

# git remote add master

# Push changes towards GitHub
git push -u origin master