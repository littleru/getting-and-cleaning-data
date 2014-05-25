#getting_and_cleaning_data Project
===========
This is the Getting and Cleaning Data Course Project. This file describes how run_analysis.R script works.
Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
*First, unzip the data and make sure the folder "UCI HAR Dataset" and the run_analysis.R script are both in the current working directory.
*Then, Run the R script (run_analysis.R). This script produces two tidy datasets. 
###"merged_data.txt" The first dataset with 10299*68 dimension is containing mean and standard deviation columns. Columns containing subject and activity information were also added. 
###"tidy_dataset" The second dataset groups the first based on subject and activity (aggregation is performed by calculating averages).
=======

