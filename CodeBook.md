#CodeBook
##Data:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Data Transformation
Two datasets were created after running the script.
* merged_data represents the merge of the training and testing datasets.
* tidy_dataset groups the results of the first dataset by Subject and Activity, then calculates an average within each group. There are 180 records.

## Variables Names:

The original project data had 561 variables. For this study, we chose those variables with names that ended in either "-mean()" or "-std()".

Out of the total 561 variables, a total of 66 were selected: 33 mean variables and 33 standard deviation variables.

###Subject:  
Subject is the identification of  volunteer 

[1] "Subject"

###Activity
[2] "Activity"
    6 activities performed by volunteers in the experiment

 1. WALKING
 2. WALKING_UPSTAIRS
 3. WALKING_DOWNSTAIRS
 4. SITTING
 5. STANDING
 6. LAYING

###Variables from col 3 to 68

	
[33] "tBodyAccMag-mean()"
[34] "tBodyAccMag-std()"
[35] "tGravityAccMag-mean()"
[36] "tGravityAccMag-std()"
[37] "tBodyAccJerkMag-mean()"
[38] "tBodyAccJerkMag-std()"
[39] "tBodyGyroMag-mean()"
[40] "tBodyGyroMag-std()"
[41] "tBodyGyroJerkMag-mean()"
[42] "tBodyGyroJerkMag-std()"
[43] "fBodyAcc-mean()-X"
[44] "fBodyAcc-mean()-Y"
[45] "fBodyAcc-mean()-Z"
[46] "fBodyAcc-std()-X"
[47] "fBodyAcc-std()-Y"
[48] "fBodyAcc-std()-Z"
[49] "fBodyAccJerk-mean()-X"
[50] "fBodyAccJerk-mean()-Y"
[51] "fBodyAccJerk-mean()-Z"
[52] "fBodyAccJerk-std()-X"
[53] "fBodyAccJerk-std()-Y"
[54] "fBodyAccJerk-std()-Z"
[55] "fBodyGyro-mean()-X"
[56] "fBodyGyro-mean()-Y"
[57] "fBodyGyro-mean()-Z"
[58] "fBodyGyro-std()-X"
[59] "fBodyGyro-std()-Y"
[60] "fBodyGyro-std()-Z"
[61] "fBodyAccMag-mean()"
[62] "fBodyAccMag-std()"
[63] "fBodyBodyAccJerkMag-mean()"
[64] "fBodyBodyAccJerkMag-std()"
[65] "fBodyBodyGyroMag-mean()"
[66] "fBodyBodyGyroMag-std()"
[67] "fBodyBodyGyroJerkMag-mean()"
[68] "fBodyBodyGyroJerkMag-std()"