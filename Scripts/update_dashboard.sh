#!/bin/bash

##############################
# Script to update dashboard
##############################

# Dependencies
#-----------------------------

# runipy - to execute jupyter notebooks as python files (old, no longer maintained, but working)
# anaconda - math/science python environment

# Update the data
#------------------------------
#Start anaconda
eval "$(conda shell.bash hook)"
conda activate base

#Run the Jupyter Notebook

#Go up to the root directory of the respository
cd ~/research/covid-19
runipy ./Notebooks/COVID-19\ Prediction.ipynb 

#Print current time in log
date >> ./Scripts/Logs/run_log.txt


# Push to github at https://github.com/pranavmishra90/COVID-19
#------------------------------------------------------------------
# Add all files to the repository with respect to .gitignore rules
git add .

# Commit changes with message with current date stamp
git commit -m "Automatic update at `date +'%Y-%m-%d %H:%M:%S'`"

# Push changes towards GitHub
git push -u origin master
