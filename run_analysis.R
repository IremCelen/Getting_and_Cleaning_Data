#9/22/2017
#Irem
#Getting and Cleaning Data Course Project

'''The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'''

#Load the necessary libraries
library(data.table)
library(dplyr)

#Load and unzip the data
if(file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/Dataset.zip", method = "curl")
unzip("./data/Dataset.zip", exdir = "./data")

#Read the activity labels and features information
setwd("./data/UCI HAR Dataset/")
#'activity_labels.txt': Links the class labels with their activity name
activitylabel <- fread("activity_labels.txt", col.names = c("activityid", "activitylabel"))
#'features.txt': List of all features
features <- fread("features.txt")

#Read the Training and Test Data
#Training
#'train/X_train.txt': Training set
X_training <- fread("train/X_train.txt")
#Assign the features as column names to the training set
colnames(X_training) <- as.character(features$V2)
#'train/y_train.txt': Training labels
Y_training <- fread("train/y_train.txt", col.names = c("activityid"))
#Add the activity label
Y_training <- merge(Y_training, activitylabel, by = c("activityid")) 
#'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. 
#'Its range is from 1 to 30. 
S_training <- fread("train/subject_train.txt", col.names = c("subjectid"))
#Check the dimensions of the training sets
dim(X_training); dim(Y_training); dim(S_training);
#Combine the training sets
training <- cbind(X_training, Y_training, S_training)
dim(training)#Check the dimensions of the new training set
#Testing
#'test/X_test.txt': Test set
X_testing <- fread("test/X_test.txt")
#Assign the features as column names to the testing set
colnames(X_testing) <- as.character(features$V2)
#'test/y_test.txt': Test labels
Y_testing <- fread("test/y_test.txt", col.names = c("activityid"))
#Add the activity label
Y_testing <- merge(Y_testing, activitylabel, by = c("activityid")) 
S_testing <- fread("test/subject_test.txt", col.names = c("subjectid"))
#Check the dimensions of the testing
dim(X_testing); dim(Y_testing); dim(S_testing);
#Combine the test sets 
testing <- cbind(X_testing, Y_testing, S_testing)
dim(testing) #Check the dimensions of the new test set

# 1. Merges the training and the test sets to create one data set
dataset <- rbind(training, testing)
dim(dataset)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement
meantraining <- dataset[, grep("mean|std|subjectid|activityid", colnames(dataset), value = TRUE)]
data<-subset(dataset,select=meantraining) 

# 3. Uses descriptive activity names to name the activities in the data set
activitydata <- merge(data, activitylabel, by = c("activityid"))
activitydata$activitylabel <- tolower(activitydata$activitylabel) #convert all the activity labels to lowercase

# 4. Appropriately labels the data set with descriptive variable names
names(activitydata) <- gsub("std\\(\\)", "standarddeviation", names(activitydata)) 
names(activitydata) <- gsub("mean\\(\\)", "mean", names(activitydata)) 
names(activitydata) <- gsub("meanFreq\\(\\)", "meanfrequeny", names(activitydata)) 
names(activitydata) <- gsub("Acc", "accelerometer", names(activitydata)) 
names(activitydata) <- gsub("Gyro", "gyroscope", names(activitydata)) 
names(activitydata) <- gsub("^t", "time_", names(activitydata)) 
names(activitydata) <- gsub("^f", "frequency_", names(activitydata)) 
names(activitydata) <- gsub("BodyBody", "body_", names(activitydata)) 
names(activitydata) <- gsub("Mag", "_mag", names(activitydata)) 
names(activitydata) <- gsub("Body", "body_", names(activitydata)) 
names(activitydata) <- gsub("Gravity", "_gravity_", names(activitydata)) 
names(activitydata) <- gsub("-", "_", names(activitydata)) 

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
data2 <- 
  activitydata %>% 
  group_by(activitylabel, subjectid) %>% 
  summarise_all(funs(mean))

#Write the tidy data into tidy_data.txt
write.table(data2, file = "tidy_data.txt", row.names = FALSE, sep = "\t")
