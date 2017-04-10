##Peer-graded Assignment

# The purpose of this project is to demonstrate your ability to collect, work with, 
# and clean a data set. The goal is to prepare tidy data that can be used for later analysis.
# You will be graded by your peers on a series of yes/no questions related to the project. 
# You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github
# repository with your script for performing the analysis, and 3) a code book that describes the variables, 
# the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
# You should also include a README.md in the repo with your scripts. This repo explains how all of 
# the scripts work and how they are connected.
# 
# One of the most exciting areas in all of data science right now is wearable computing - 
#     see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop 
# the most advanced algorithms to attract new users. The data linked to from the course website represent data 
# collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the 
# site where the data was obtained:
#     
#     http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# 
# Here are the data for the project:
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Libraries
library(dplyr)

## Loading Subjects: 
    subjectsTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
    subjectsTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
    subjects <- rbind(subjectsTrain, subjectsTest)
    colnames(subjects)<-("subject")

##Loading ActivityLabelsTrain and changing their names
    activityLabelsTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
    activityLabelsTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
    activitiesNoName <- rbind(activityLabelsTrain, activityLabelsTest)
    activities<- data.frame(activitiesNoName)
    colnames(activities)<-("activity")
    activities$activity <- replace(activities$activity, activities$activity==1, "WALKING")
    activities$activity <- replace(activities$activity, activities$activity==2, "WALKING_UPSTAIRS")
    activities$activity <- replace(activities$activity, activities$activity==3, "WALKING_DOWNSTAIRS")
    activities$activity <- replace(activities$activity, activities$activity==4, "SITTING")
    activities$activity <- replace(activities$activity, activities$activity==5, "STANDING")
    activities$activity <- replace(activities$activity, activities$activity==6, "LAYING")
  
##Loading mean() and std() features from Features

    ##Extract mean and std feature names
    pat<-'(mean[(][])]|std[(][])])'
    featuresFullListNames <- read.table("./UCI HAR Dataset/features.txt")
    featuresListNames <- grepl(pat , tolower(featuresFullListNames$V2))
    
    ##Loading features
    featuresListTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
    featuresListTest <- read.table("./UCI HAR Dataset/test/X_test.txt")
    
    ##Extract mean and std feature
    featuresListTrain <- featuresListTrain[,featuresListNames]
    featuresListTest <- featuresListTest[,featuresListNames]
    ##Combining Lists
    features <- rbind(featuresListTrain,featuresListTest)
    
    ##Renombramos columnas
    names<- subset(featuresFullListNames, grepl(pat , tolower(featuresFullListNames$V2)))
    colnames(features)<-names$V2
    
## Creating the final data set
    dataSetFinal <- data.table(subjects,activities,features)
    
## Second, independent tidy data set with the average of each variable for each activity and each subject
    DataSetMeans<- aggregate(dataSetFinal[, 3:68], list(dataSetFinal$subject,dataSetFinal$activity), mean)
    colnames(DataSetMeans)[1] <- "Subject"
    colnames(DataSetMeans)[2] <- "Activity"
   
##Saving the final data set
    write.table(DataSetMeans, file = "tidy_DataSet.txt", row.name = FALSE)
