# GettingCleaningData Project Readme
Samsung Galaxy S smartphone collect 30 volunteers within an age bracket of 19-48 years activities. Each person perform six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The R script run_analysis.R perform the following task to produce average_measurement.txt - the result of the task 5.
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

To run the R script should following the following steps in R:
A. Copy X_Train.txt and X_test.txt data under the source code sub-folder ./data  (“directory” has sub-folder as the default value)
B. setwd to the same dir as this source code
C. source("run_analysis.R")
D. run_analysis() or run_analysis(path). Path is where to have those data files. Be aware the folder should not have other files other than data file.

The code is listed in below (run_analysts.R):
run_analysis <- function(directory="./data"){
    multmerge = function(mypath){
        filenames=list.files(path=mypath, full.names=TRUE)
        datalist = lapply(filenames, function(x){read.fwf(file=x,col.names=c('tBodyAcc-mean-X','tBodyAcc-mean-Y','tBodyAcc-mean-Z','tBodyAcc-std-X','tBodyAcc-std-Y','tBodyAcc-std-Z','tGravityAcc-mean-X','tGravityAcc-mean-Y','tGravityAcc-mean-Z','tGravityAcc-std-X','tGravityAcc-std-Y','tGravityAcc-std-Z','tBodyAccJerk-mean-X','tBodyAccJerk-mean-Y','tBodyAccJerk-mean-Z','tBodyAccJerk-std-X','tBodyAccJerk-std-Y','tBodyAccJerk-std-Z','tBodyGyro-mean-X','tBodyGyro-mean-Y','tBodyGyro-mean-Z','tBodyGyro-std-X','tBodyGyro-std-Y','tBodyGyro-std-Z','tBodyGyroJerk-mean-X','tBodyGyroJerk-mean-Y','tBodyGyroJerk-mean-Z','tBodyGyroJerk-std-X','tBodyGyroJerk-std-Y','tBodyGyroJerk-std-Z','tBodyAccMag-mean','tBodyAccMag-std','tGravityAccMag-mean','tGravityAccMag-std','tBodyAccJerkMag-mean','tBodyAccJerkMag-std','tBodyGyroMag-mean','tBodyGyroMag-std','tBodyGyroJerkMag-mean','tBodyGyroJerkMag-std','fBodyAcc-mean-X','fBodyAcc-mean-Y','fBodyAcc-mean-Z','fBodyAcc-std-X','fBodyAcc-std-Y','fBodyAcc-std-Z','fBodyAccJerk-mean-X','fBodyAccJerk-mean-Y','fBodyAccJerk-mean-Z','fBodyAccJerk-std-X','fBodyAccJerk-std-Y','fBodyAccJerk-std-Z','fBodyGyro-mean-X','fBodyGyro-mean-Y','fBodyGyro-mean-Z','fBodyGyro-std-X','fBodyGyro-std-Y','fBodyGyro-std-Z','fBodyAccMag-mean','fBodyAccMag-std','fBodyBodyAccJerkMag-mean','fBodyBodyAccJerkMag-std','fBodyBodyGyroMag-mean','fBodyBodyGyroMag-std','fBodyBodyGyroJerkMag-mean','fBodyBodyGyroJerkMag','angle_tBodyAccMean_gravityMean','angle_tBodyGyro_gravityMean','angle_tBodyGyroMean_gravityMean','angle_tBodyGyroJerkMean_gravityMean','angle_X_gravityMean','angle_Y_gravityMean','angle_Z_gravityMean'),widths=c(16,16,16,16,16,16,-544,16,16,16,16,16,16,-544,16,16,16,16,16,16,-544,16,16,16,16,16,16,-544,16,16,16,16,16,16,-544,16,16,-176,16,16,-176,16,16,-176,16,16,-176,16,16,-176,16,16,16,16,16,16,-1168,16,16,16,16,16,16,-1168,16,16,16,16,16,16,-1168,16,16,-176,16,16,-176,16,16,-176,16,16,-176,16,16,16,16,16,16,16))})
        Reduce(function(x,y) {rbind(x,y)}, datalist)}
    DF=multmerge(directory)
    DF_mean=sapply(DF,mean)
    write.table(DF_mean,file="./average_measurement.txt",row.names=FALSE,col.names=FALSE,sep="\t",quote=FALSE)
}


