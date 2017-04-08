## Peer-graded Assignment: Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 

1. a tidy data set as described below. 

2. a link to a Github repository with your script for performing the analysis.

3. a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

### Requirements

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### How does it work

1. Download the data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Unzip it.
3. Run the "run_analysis.R" script in the same folder you unzip the data folder.

###Scrip Steps
1. Load, join (test/train) and change the column name for the subjects columns.
2. Load, join (test/train) activity labels and the replace the numbers of each activity with the real name of tha activity. Change the name of the column.
3.Extract the names that include the "mean" or "std" from the "features.txt", extract and filter with this list all the measurments of the features list, merge and change column name.
4. Create final tidy dataSet.
5. Create Second, independent tidy data set with the average of each variable for each activity and each subject.
6. Safe the tidy dataSet as "tidy_DataSet.txt" in the execution folder.
