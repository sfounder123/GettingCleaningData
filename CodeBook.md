##CodeBook
Code implementation:  (All double quotes in below are either the variables or methods in the code.)
1.	Preparation of downloading the data ( https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ) and unzip to obtain all files.
2.	Regards to merges, since data sets ‘where 70% of the volunteers were selected for generating the training data and 30% the test data’, there are no reducing rows necessary. 
The function “multmerge” return the combination of ‘test’ and ‘train’ (“filenames”) records.
3.	Based on feacher.txt and the requirement of measurements on the mean and standard deviation, there are 73 measurements have been identified. The script used fixed format file read in each rows for those 73 measurements into “datalist”.
4.	After read in both files of 73 measurements ( “DF” hold the merge result), the script uses “sapply” function to perform average (mean). The result set is hold in “DF_mean”.
5.	Use write.table to dump “DF_mean” results to file system with name “average_measurement.txt” in the same path as the source code.
The definition of the result (average_measurement.txt):
<br>tBodyAcc.mean.X</br>
<br>tBodyAcc.mean.Y</br>
<br>tBodyAcc.mean.Z</br>
<br>tBodyAcc.std.X</br>
<br>tBodyAcc.std.Y</br>
<br>tBodyAcc.std.Z</br>
<br>tGravityAcc.mean.X</br>
<br>vtGravityAcc.mean.Y</br>
<br>tGravityAcc.mean.Z</br>
<br>tGravityAcc.std.X</br>
<br>tGravityAcc.std.Y</br>
<br>tGravityAcc.std.Z</br>
<br>tBodyAccJerk.mean.X</br>
<br>tBodyAccJerk.mean.Y</br>
<br>tBodyAccJerk.mean.Z</br>
<br>tBodyAccJerk.std.X</br>
<br>tBodyAccJerk.std.Y</br>
<br>tBodyAccJerk.std.Z</br>
<br>tBodyGyro.mean.X</br>
<br>tBodyGyro.mean.Y</br>
<br>tBodyGyro.mean.Z</br>
<br>tBodyGyro.std.X</br>
<br>tBodyGyro.std.Y</br>
<br>tBodyGyro.std.Z</br>
<br>tBodyGyroJerk.mean.X</br>
<br>tBodyGyroJerk.mean.Y</br>
<br>tBodyGyroJerk.mean.Z</br>
<br>tBodyGyroJerk.std.X</br>
<br>tBodyGyroJerk.std.Y</br>
<br>tBodyGyroJerk.std.Z</br>
<br>tBodyAccMag.mean</br>
<br>tBodyAccMag.std</br>
<br>tGravityAccMag.mean</br>
<br>tGravityAccMag.std</br>
<br>tBodyAccJerkMag.mean</br>
<br>tBodyAccJerkMag.std</br>
<br>tBodyGyroMag.mean</br>
<br>tBodyGyroMag.std</br>
<br>tBodyGyroJerkMag.mean</br>
<br>tBodyGyroJerkMag.std</br>
<br>fBodyAcc.mean.X</br>
<br>fBodyAcc.mean.Y</br>
<br>fBodyAcc.mean.Z</br>
<br>fBodyAcc.std.X</br>
<br>fBodyAcc.std.Y</br>
<br>fBodyAcc.std.Z</br>
<br>fBodyAccJerk.mean.X</br>
<br>fBodyAccJerk.mean.Y</br>
<br>fBodyAccJerk.mean.Z</br>
<br>fBodyAccJerk.std.X</br>
<br>fBodyAccJerk.std.Y</br>
<br>fBodyAccJerk.std.Z</br>
<br>fBodyGyro.mean.X</br>
<br>fBodyGyro.mean.Y</br>
<br>fBodyGyro.mean.Z</br>
<br>fBodyGyro.std.X</br>
<br>fBodyGyro.std.Y</br>
<br>fBodyGyro.std.Z</br>
<br>fBodyAccMag.mean</br>
<br>fBodyAccMag.std</br>
<br>fBodyBodyAccJerkMag.mean</br>
<br>fBodyBodyAccJerkMag.std</br>
<br>fBodyBodyGyroMag.mean</br>
<br>fBodyBodyGyroMag.std</br>
<br>fBodyBodyGyroJerkMag.mean</br>
<br>fBodyBodyGyroJerkMag</br>
<br>angle_tBodyAccMean_gravityMean</br>
<br>angle_tBodyGyro_gravityMean</br>
<br>angle_tBodyGyroMean_gravityMean</br>
<br>angle_tBodyGyroJerkMean_gravityMean</br>
<br>angle_X_gravityMean</br>
<br>angle_Y_gravityMean</br>
<br>angle_Z_gravityMean</br>
