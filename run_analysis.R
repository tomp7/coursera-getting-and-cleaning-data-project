## Getting and Cleaning Data Course Project

library(dplyr)

## Geting the data
## Downloading the zip file
Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
File <- "UCI HAR Dataset.zip"

if (!file.exists(File)) {
  download.file(Url, File, mode = "wb")
}

## If data directory does not already exist, unzip the file 
dataPath <- "UCI HAR Dataset"
if (!file.exists(dataPath)) {
  unzip(File)
}


## Reading in the data 
# Training Data 
trainingSubjects <- read.table(file.path(dataPath, "train", "subject_train.txt"))
trainingValues <- read.table(file.path(dataPath, "train", "X_train.txt"))
trainingActivity <- read.table(file.path(dataPath, "train", "y_train.txt"))

# Test Data 
testSubjects <- read.table(file.path(dataPath, "test", "subject_test.txt"))
testValues <- read.table(file.path(dataPath, "test", "X_test.txt"))
testActivity <- read.table(file.path(dataPath, "test", "y_test.txt"))

# Reading in the features 
features <- read.table(file.path(dataPath, "features.txt"), as.is = TRUE)

# Reading the Activity Labels 
activities <- read.table(file.path(dataPath, "activity_labels.txt"))
colnames(activities) <- c("activityId", "activityLabel")

## 1
## Merge
## Training data set & test data set merged to create a single data set called actData 
## Single data table creation 
actData <- rbind(cbind(trainingSubjects, trainingValues, trainingActivity),
                 cbind(testSubjects, testValues, testActivity))

## Removing the individual data tables as they are no longer needed 
rm(trainingSubjects, trainingValues, trainingActivity, testSubjects, testValues, testActivity)

## Assignment of the column names to newly created data set 
colnames(actData) <- c("subject", features[, 2], "activity")

## 2
## Extract
## Extracts only the measurements on the mean and standard deviation for each measurement
## Keeps only columns we want based on column name using grepl patern matching 
columnsToKeep <- grepl("subject|activity|mean|std", colnames(actData))
actData <- actData[, columnsToKeep]


## 3
## Use descriptive activity names to name the activities in the data set
## Factor levels replace the activity values 
actData$activity <- factor(actData$activity, levels = activities[, 1], labels = activities[, 2])


## 4
## Appropriately labels the data set with descriptive variable names
actDataCols <- colnames(actData)

## Special characters are removed 
## gsub() function replaces all matches of a string
actDataCols <- gsub("[\\(\\)-]", "", actDataCols)

## expand abbreviations and clean up names
## Again using gsub() to identify/match based on a pattern and replace with a more detailed name 
## Looking for ^f aka starting with "f" and so on... 
actDataCols <- gsub("^f", "frequencyDomain", actDataCols)
actDataCols <- gsub("^t", "timeDomain", actDataCols)
actDataCols <- gsub("Acc", "Accelerometer", actDataCols)
actDataCols <- gsub("Gyro", "Gyroscope", actDataCols)
actDataCols <- gsub("Mag", "Magnitude", actDataCols)
actDataCols <- gsub("Freq", "Frequency", actDataCols)
actDataCols <- gsub("mean", "Mean", actDataCols)
actDataCols <- gsub("std", "StandardDev", actDataCols)
actDataCols <- gsub("BodyBody", "Body", actDataCols)

## Will use/display the updated column names 
colnames(actData) <- actDataCols


## 5
## From the data set in step 4, creates a second, 
## independent tidy data set with the average of each variable for each activity and each subject.

## Grouped by Subject and Activity 
## Summarised by the mean 
actDataMeans <- actData %>% 
  group_by(subject, activity) %>%
  summarise_each(funs(mean))

## Output 
write.table(actDataMeans, "tidy.txt", row.names = FALSE, 
            quote = FALSE)

## Attempted to create a codebook using a data package 
install.packages("dataMaid")
library(dataMaid)
makeCodebook(actDataMeans)
