#!/bin/bash

#Start anaconda
eval "$(conda shell.bash hook)"
conda activate base

#Run the Jupyter Notebook
cd ~/research/covid-19/Notebooks
runipy COVID-19\ Prediction.ipynb 

#Print current time in log
cd ~/research/covid-19/Scripts/Logs/
date >> run_log.txt
