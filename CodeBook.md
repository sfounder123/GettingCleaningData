##CodeBook
Code implementation:  (All double quotes in below are either the variables or methods in the code.)

1.	Preparation of downloading the data ( https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ) and unzip to obtain all files.
2.	Regards to merges, since data sets ‘where 70% of the volunteers were selected for generating the training data and 30% the test data’, there are no reducing rows necessary. The function “multmerge” return the combination of ‘test’ and ‘train’ (“filenames”) records.
3.	Based on features.txt and the requirement of measurements on the mean and standard deviation, there are 86 measurements have been identified by using gsub and grepl functions. "vname" is the final measurement names. "fmt" is widths list. Since this is a fixed format data file, use read.fwf fuction by passing path (calling variable "directory"), column name (calling  variable "vname"), and widts (calling variable "fmt") into the function multmerge for retrieving 86 measurements into “datalist” which return the value into "DF" in main calling program.
4.	After read in both files of 73 measurements ( “DF” hold the merge result), the script uses “sapply” function to perform average (mean). The result set is hold in “DF_mean”.
5.	Use write.table to dump "DF_mean" results to file system with name "average_measurement.txt" in the same path as the source code.

The definition of the result (average_measurement.txt):

<br>	tBodyAccmeanX
<br>	tBodyAccmeanY
<br>	tBodyAccmeanZ
<br>	tBodyAccstdX
<br>	tBodyAccstdY
<br>	tBodyAccstdZ
<br>	tGravityAccmeanX
<br>	tGravityAccmeanY
<br>	tGravityAccmeanZ
<br>	tGravityAccstdX
<br>	tGravityAccstdY
<br>	tGravityAccstdZ
<br>	tBodyAccJerkmeanX
<br>	tBodyAccJerkmeanY
<br>	tBodyAccJerkmeanZ
<br>	tBodyAccJerkstdX
<br>	tBodyAccJerkstdY
<br>	tBodyAccJerkstdZ
<br>	tBodyGyromeanX
<br>	tBodyGyromeanY
<br>	tBodyGyromeanZ
<br>	tBodyGyrostdX
<br>	tBodyGyrostdY
<br>	tBodyGyrostdZ
<br>	tBodyGyroJerkmeanX
<br>	tBodyGyroJerkmeanY
<br>	tBodyGyroJerkmeanZ
<br>	tBodyGyroJerkstdX
<br>	tBodyGyroJerkstdY
<br>	tBodyGyroJerkstdZ
<br>	tBodyAccMagmean
<br>	tBodyAccMagstd
<br>	tGravityAccMagmean
<br>	tGravityAccMagstd
<br>	tBodyAccJerkMagmean
<br>	tBodyAccJerkMagstd
<br>	tBodyGyroMagmean
<br>	tBodyGyroMagstd
<br>	tBodyGyroJerkMagmean
<br>	tBodyGyroJerkMagstd
<br>	fBodyAccmeanX
<br>	fBodyAccmeanY
<br>	fBodyAccmeanZ
<br>	fBodyAccstdX
<br>	fBodyAccstdY
<br>	fBodyAccstdZ
<br>	fBodyAccmeanFreqX
<br>	fBodyAccmeanFreqY
<br>	fBodyAccmeanFreqZ
<br>	fBodyAccJerkmeanX
<br>	fBodyAccJerkmeanY
<br>	fBodyAccJerkmeanZ
<br>	fBodyAccJerkstdX
<br>	fBodyAccJerkstdY
<br>	fBodyAccJerkstdZ
<br>	fBodyAccJerkmeanFreqX
<br>	fBodyAccJerkmeanFreqY
<br>	fBodyAccJerkmeanFreqZ
<br>	fBodyGyromeanX
<br>	fBodyGyromeanY
<br>	fBodyGyromeanZ
<br>	fBodyGyrostdX
<br>	fBodyGyrostdY
<br>	fBodyGyrostdZ
<br>	fBodyGyromeanFreqX
<br>	fBodyGyromeanFreqY
<br>	fBodyGyromeanFreqZ
<br>	fBodyAccMagmean
<br>	fBodyAccMagstd
<br>	fBodyAccMagmeanFreq
<br>	fBodyBodyAccJerkMagmean
<br>	fBodyBodyAccJerkMagstd
<br>	fBodyBodyAccJerkMagmeanFreq
<br>	fBodyBodyGyroMagmean
<br>	fBodyBodyGyroMagstd
<br>	fBodyBodyGyroMagmeanFreq
<br>	fBodyBodyGyroJerkMagmean
<br>	fBodyBodyGyroJerkMagstd
<br>	fBodyBodyGyroJerkMagmeanFreq
<br>	angletBodyAccMeangravity
<br>	angletBodyAccJerkMeangravityMean
<br>	angletBodyGyroMeangravityMean
<br>	angletBodyGyroJerkMeangravityMean
<br>	angleXgravityMean
<br>	angleYgravityMean
<br>	angleZgravityMean


