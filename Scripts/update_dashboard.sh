#!/bin/bash

#Start anaconda
eval "$(conda shell.bash hook)"
conda activate base

#Run the Jupyter Notebook
cd ~/research/covid-19/Notebooks
runipy COVID-19\ Prediction.ipynb 

cp -l ~/research/covid-19/README.md ~/research/covid-19/wordpress-dashboard.md

#Print current time in log
cd ~/research/covid-19/Scripts/Logs/
date >> run_log.txt


#Push to github
cd ~/research/covid-19/
# cp ./README.md ./Wordpress/dashboard_latest.md #The new Jupyter notebook will output both files

# Add all files to the repository with respect to .gitignore rules
git add .

# Commit changes with message with current date stamp
git commit -m "Automatic update at `date +'%Y-%m-%d %H:%M:%S'`"

# git remote add master

# Push changes towards GitHub
git push -u origin master

############################################
# Hardlink images to wordpress directory
############################################
rm -f /home/pranav/personal-website/sites/wordpress/html/wp-content/research/covid-19/covid-19-dashboard-figures/*
cp -lR ./Figures/* /home/pranav/personal-website/sites/wordpress/html/wp-content/research/covid-19/covid-19-dashboard-figures