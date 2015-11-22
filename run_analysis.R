# This R Script does the following:
# ---------------------------------
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement. 
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names. 
# From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
# for each activity and each subject.



# Function to Install and Load R Packages
invokePackages <- function(requiredPackages) {
  remainingPackages <- requiredPackages[!(requiredPackages %in% installed.packages()[,"Package"])]
  if(length(remainingPackages))  install.packages(remainingPackages, quiet = TRUE)
  for(packageName in requiredPackages)
  {
    library(packageName, character.only=TRUE, quietly=TRUE)
  }
}



# Install and install necessary packages
invokePackages(c("stringr", "data.table", "dplyr"))


# Step 1: read the variable names and clean them up
features <- read.csv("UCI HAR Dataset/features.txt", col.names = c("number", "feature"), sep = ' ', header = FALSE)
features <- features[str_detect(features$feature, pattern = "mean") | str_detect(features$feature, pattern = "std"),]
features$feature <- gsub("\\(\\)", "", features$feature)
features$feature <- gsub("mean", "Mean", features$feature)
features$feature <- gsub("std", "Std", features$feature)
features$feature <- gsub("\\-", "", features$feature)
features$feature <- gsub("BodyBody", "Body", features$feature)
features$feature <- gsub("Acc", "Accelerator", features$feature)
features$feature <- gsub("Mag", "Magnitude", features$feature)
features$feature <- gsub("Freq", "Frequency", features$feature)
features$feature <- gsub("Gyro", "Gyroscope", features$feature)
features$feature <- gsub("^f", "frequencyDomain", features$feature)
features$feature <- gsub("^t", "timeDomain", features$feature)


# Step 2: read the training set
subjectTrainData <- fread("UCI HAR Dataset/train/subject_train.txt", header = FALSE, strip.white = TRUE)
xTrainData <- fread("UCI HAR Dataset/train/X_train.txt", sep=' ', header = FALSE, strip.white = TRUE, select = features$number)
yTrainData <- fread("UCI HAR Dataset/train/Y_train.txt", header = FALSE, strip.white = TRUE)
trainData <- cbind(subjectTrainData, xTrainData, yTrainData)
# Cleanup
rm(list = c("xTrainData", "subjectTrainData", "yTrainData"))


# Step 3: read the test set
subjectTestData <- fread("UCI HAR Dataset/test/subject_test.txt", header = FALSE, strip.white = TRUE)
xTestData <- fread("UCI HAR Dataset/test/X_test.txt", sep=' ', header = FALSE, strip.white = TRUE, select = features$number)
yTestData <- fread("UCI HAR Dataset/test/Y_test.txt", header = FALSE, strip.white = TRUE)
testData <- cbind(subjectTestData, xTestData, yTestData)
# Cleanup
rm(list = c("xTestData", "subjectTestData", "yTestData"))


# Step 4: Combine train and test sets
allData <- rbind(trainData, testData)
# Cleanup
rm(list = c("trainData", "testData"))


# Step 5: Give the dataset proper variablenames
names(allData) <- c("subject", features$feature, "activityID")
# Cleanup
rm(features)


# Step 6: read the activity labels and merge them with the dataset
activities <- read.csv("UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = ' ', col.names = c("activityID", "activity"))
allData <- merge(activities, allData, by.x = "activityID", by.y = "activityID")
allData$activityID <- NULL
# Cleanup
rm(activities)


# Step 7: melt the dataset and summarize it per activity/subject/variable
allData <- melt(allData, id = c("activity", "subject"), measure.vars=3:81)
allData <- summarize(group_by(allData, activity, subject, variable), value = mean(value))


# Step 8: Export the dataset to a file
write.table(allData, file = "output.txt", row.names = FALSE)
# Cleanup
rm(allData)