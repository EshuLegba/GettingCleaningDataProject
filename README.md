README.md
author: Rayned Wiles
Project for Coursera-Getting and Cleaning Data

This project is about producing an R script to produce a tidy data set from data collected from accelerometers on the Samsung Galaxy S smartphone as reported by http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

This script asumes that the R script is in the working directory and that the zip file containing the data was unzipped in the working directory. Namely, the data is contained in a directory called "UCI HAR Dataset" that is located in the working directory.  This directory contains two subdirectories, UCI HAR Dataset\test and UCI HAR Dataset\train.

This script loads the reshape2 library.  If you have not installed that package, you will need to run the commands install.packages("reshape2") and library(reshape2).

This scripts loads the testing, training, subject, features, and activity data which are all in seperate files. The testing and trainging datasets which originally had 563 feature variables were to 66 feature variables that represent the mean and standard deviation variables (mean() and std()).  These files are combined into one data table, harCombinedMS.

The combined data table, harCombinedMS, was converted into a long data table, harMelt, using melt from the reshape2 package for expedite creating an aggregate data table with the average for each variable.  An aggregate data table, harAggDataLong, was created using dcast from the reshape package.  A wide aggregrate data table, harAggDataWide, was also created from harMelt.

The script will write two text files with the tidy data, harAggDataLong.csv and harAggDataWide.csv.

The long tidy data, harAggDataLong.cv was uploaded to the GitHub Site and the code book, CodeBook.md describes its structure.