##CodeBook
Code implementation:  (All double quotes in below are either the variables or methods in the code.)
1.	Preparation of downloading the data ( https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ) and unzip to obtain all files.
2.	Regards to merges, since data sets ‘where 70% of the volunteers were selected for generating the training data and 30% the test data’, there are no reducing rows necessary. 
The function “multmerge” return the combination of ‘test’ and ‘train’ (“filenames”) records.
3.	Based on feacher.txt and the requirement of measurements on the mean and standard deviation, there are 73 measurements have been identified. The script used fixed format file read in each rows for those 73 measurements into “datalist”.
4.	After read in both files of 73 measurements ( “DF” hold the merge result), the script uses “sapply” function to perform average (mean). The result set is hold in “DF_mean”.
5.	Use write.table to dump “DF_mean” results to file system with name “average_measurement.txt” in the same path as the source code.
The definition of the result (average_measurement.txt):
tBodyAcc.mean.X
tBodyAcc.mean.Y
tBodyAcc.mean.Z
tBodyAcc.std.X
tBodyAcc.std.Y
tBodyAcc.std.Z
tGravityAcc.mean.X
tGravityAcc.mean.Y
tGravityAcc.mean.Z
tGravityAcc.std.X
tGravityAcc.std.Y
tGravityAcc.std.Z
tBodyAccJerk.mean.X
tBodyAccJerk.mean.Y
tBodyAccJerk.mean.Z
tBodyAccJerk.std.X
tBodyAccJerk.std.Y
tBodyAccJerk.std.Z
tBodyGyro.mean.X
tBodyGyro.mean.Y
tBodyGyro.mean.Z
tBodyGyro.std.X
tBodyGyro.std.Y
tBodyGyro.std.Z
tBodyGyroJerk.mean.X
tBodyGyroJerk.mean.Y
tBodyGyroJerk.mean.Z
tBodyGyroJerk.std.X
tBodyGyroJerk.std.Y
tBodyGyroJerk.std.Z
tBodyAccMag.mean
tBodyAccMag.std
tGravityAccMag.mean
tGravityAccMag.std
tBodyAccJerkMag.mean
tBodyAccJerkMag.std
tBodyGyroMag.mean
tBodyGyroMag.std
tBodyGyroJerkMag.mean
tBodyGyroJerkMag.std
fBodyAcc.mean.X
fBodyAcc.mean.Y
fBodyAcc.mean.Z
fBodyAcc.std.X
fBodyAcc.std.Y
fBodyAcc.std.Z
fBodyAccJerk.mean.X
fBodyAccJerk.mean.Y
fBodyAccJerk.mean.Z
fBodyAccJerk.std.X
fBodyAccJerk.std.Y
fBodyAccJerk.std.Z
fBodyGyro.mean.X
fBodyGyro.mean.Y
fBodyGyro.mean.Z
fBodyGyro.std.X
fBodyGyro.std.Y
fBodyGyro.std.Z
fBodyAccMag.mean
fBodyAccMag.std
fBodyBodyAccJerkMag.mean
fBodyBodyAccJerkMag.std
fBodyBodyGyroMag.mean
fBodyBodyGyroMag.std
fBodyBodyGyroJerkMag.mean
fBodyBodyGyroJerkMag
angle_tBodyAccMean_gravityMean
angle_tBodyGyro_gravityMean
angle_tBodyGyroMean_gravityMean
angle_tBodyGyroJerkMean_gravityMean
angle_X_gravityMean
angle_Y_gravityMean
angle_Z_gravityMean
