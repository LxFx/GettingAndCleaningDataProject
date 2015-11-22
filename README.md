# Getting and Cleaning Data Course Project

## Introduction
These files together are my course project for the Getting and Cleaning Data Coursera module.
The following files are available in this repository:

*   README.md: the guide you are reading right now
*   run_analysis.R: the R script that will generate a textfile containing a tidy dataset.
*   Codebook.md: the document explaining all types of variables in the tidy dataset

## R script guidelines
For the R script that you can find in this repository to function correctly, it requires an unpacked UCI HAR Dataset.
If you have the zip file, please unpack it, so that you have the "UCI HAR Dataset" directory in your R Working Directory.
Now you can download, open and run the R script in an editor like RStudio.
The output file "output.txt" will appear in your Working Directory in a second or two.

## R script inner workings
The R script functions as follows:

1.  First of all, necessary packages are downloaded and attached if necessary through a custom loading function.
2.  Now, the script reads the "features.txt" file and selects and renames the requested variables.
3.  The 3 files composing the trainingset are read and combined through "cbind".
4.  The 3 files composing the testset are read and combined through "cbind".
5.  The test and trainingset are now combined through "rbind".
6.  The resulting dataset is now given the cleaned up set of feature names.
7.  The dataset is merged with the activity labels to obtain more transparent activity names.
8.  The dataset goes through "melt" and "summarize" to end up as a tidy and long (not wide) dataset
9.  The dataset is written to disk as "output.txt"