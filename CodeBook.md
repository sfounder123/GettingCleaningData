##CodeBook
Code implementation:  (All double quotes in below are either the variables or methods in the code.)

1.	Preparation of downloading the data ( https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ) and unzip to obtain all files.
2.	Regards to merges, since data sets ‘where 70% of the volunteers were selected for generating the training data and 30% the test data’, there are no reducing rows necessary. The function “multmerge” return the combination of ‘test’ and ‘train’ (“filenames”) records.
3.	Based on features.txt and the requirement of measurements on the mean and standard deviation, there are 73 measurements have been identified. The script used fixed format file read in each rows for those 73 measurements into “datalist”.
4.	After read in both files of 73 measurements ( “DF” hold the merge result), the script uses “sapply” function to perform average (mean). The result set is hold in “DF_mean”.
5.	se write.table to dump “DF_mean” results to file system with name “average_measurement.txt” in the same path as the source code.

The definition of the result (average_measurement.txt):

<br>tBodyAcc.mean.X
<br>tBodyAcc.mean.Y
<br>tBodyAcc.mean.Z
<br>tBodyAcc.std.X
<br>tBodyAcc.std.Y
<br>tBodyAcc.std.Z
<br>tGravityAcc.mean.X
<br>vtGravityAcc.mean.Y
<br>tGravityAcc.mean.Z
<br>tGravityAcc.std.X
<br>tGravityAcc.std.Y
<br>tGravityAcc.std.Z
<br>tBodyAccJerk.mean.X
<br>tBodyAccJerk.mean.Y
<br>tBodyAccJerk.mean.Z
<br>tBodyAccJerk.std.X
<br>tBodyAccJerk.std.Y
<br>tBodyAccJerk.std.Z
<br>tBodyGyro.mean.X
<br>tBodyGyro.mean.Y
<br>tBodyGyro.mean.Z
<br>tBodyGyro.std.X
<br>tBodyGyro.std.Y
<br>tBodyGyro.std.Z
<br>tBodyGyroJerk.mean.X
<br>tBodyGyroJerk.mean.Y
<br>tBodyGyroJerk.mean.Z
<br>tBodyGyroJerk.std.X
<br>tBodyGyroJerk.std.Y
<br>tBodyGyroJerk.std.Z
<br>tBodyAccMag.mean
<br>tBodyAccMag.std
<br>tGravityAccMag.mean
<br>tGravityAccMag.std
<br>tBodyAccJerkMag.mean
<br>tBodyAccJerkMag.std
<br>tBodyGyroMag.mean
<br>tBodyGyroMag.std
<br>tBodyGyroJerkMag.mean
<br>tBodyGyroJerkMag.std
<br>fBodyAcc.mean.X
<br>fBodyAcc.mean.Y
<br>fBodyAcc.mean.Z
<br>fBodyAcc.std.X
<br>fBodyAcc.std.Y
<br>fBodyAcc.std.Z
<br>fBodyAccJerk.mean.X
<br>fBodyAccJerk.mean.Y
<br>fBodyAccJerk.mean.Z
<br>fBodyAccJerk.std.X
<br>fBodyAccJerk.std.Y
<br>fBodyAccJerk.std.Z
<br>fBodyGyro.mean.X
<br>fBodyGyro.mean.Y
<br>fBodyGyro.mean.Z
<br>fBodyGyro.std.X
<br>fBodyGyro.std.Y
<br>fBodyGyro.std.Z
<br>fBodyAccMag.mean
<br>fBodyAccMag.std
<br>fBodyBodyAccJerkMag.mean
<br>fBodyBodyAccJerkMag.std
<br>fBodyBodyGyroMag.mean
<br>fBodyBodyGyroMag.std
<br>fBodyBodyGyroJerkMag.mean
<br>fBodyBodyGyroJerkMag
<br>angle_tBodyAccMean_gravityMean
<br>angle_tBodyGyro_gravityMean
<br>angle_tBodyGyroMean_gravityMean
<br>angle_tBodyGyroJerkMean_gravityMean
<br>angle_X_gravityMean
<br>angle_Y_gravityMean
<br>angle_Z_gravityMean
