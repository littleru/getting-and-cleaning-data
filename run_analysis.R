
## Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
## unzip the data and make sure the folder "UCI HAR Dataset" and 
## the run_analysis.R script are both in the current working directory
## function to read a raw data, and get a tidy data


# Step1. Read and merge the training and the test sets.

#read train data
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
X<- rbind(X_train, X_test)


train_Subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
test_Subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
Subject <- rbind(train_Subject, test_Subject)

Y_test<- read.table("./UCI HAR Dataset/test/y_test.txt") 
Y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
Y <- rbind( Y_test, Y_train ) 


# Step2. Extracts only the mean and SD for each measurement. 
features <- read.table("./UCI HAR Dataset/features.txt")
meanStdIndices <- grep("mean\\(\\)|std\\(\\)", features[, 2])
X <- X[, meanStdIndices]



# Step3. Name the activities in the data set
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")
activity[, 2] <- tolower(gsub("_", "", activity[, 2]))
Y[, 1] <- activity[Y[, 1], 2]
names(Y) <- "activity"

# Step4.  labels the data set 
names(Subject) <- "subject"
cleanedData <- cbind(Subject, Y, X)
write.table(cleanedData, "merged_data.txt") # write out the 1st dataset


# Step5. Creates a second, independent tidy data set.
mean_data <- aggregate(. ~ subject + activity, data =cleanedData, FUN = mean )
write.table( mean_data, "tidy_dataset.txt" )



