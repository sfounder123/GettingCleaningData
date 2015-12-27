### 1. Copy X_Train.txt and X_test.txt data under the source code sub-folder ./data
### 2. setwd to the same dir as this source code
### 3. source("run_analysis.R")
### 4. run_analysis() or the path run_analysis(path) that have those data file only
run_analysis <- function(directory="./data"){
    multmerge = function(mypath){
        filenames=list.files(path=mypath, full.names=TRUE)
        datalist = lapply(filenames, function(x){read.fwf(file=x,col.names=c('tBodyAcc-mean-X','tBodyAcc-mean-Y','tBodyAcc-mean-Z','tBodyAcc-std-X','tBodyAcc-std-Y','tBodyAcc-std-Z','tGravityAcc-mean-X','tGravityAcc-mean-Y','tGravityAcc-mean-Z','tGravityAcc-std-X','tGravityAcc-std-Y','tGravityAcc-std-Z','tBodyAccJerk-mean-X','tBodyAccJerk-mean-Y','tBodyAccJerk-mean-Z','tBodyAccJerk-std-X','tBodyAccJerk-std-Y','tBodyAccJerk-std-Z','tBodyGyro-mean-X','tBodyGyro-mean-Y','tBodyGyro-mean-Z','tBodyGyro-std-X','tBodyGyro-std-Y','tBodyGyro-std-Z','tBodyGyroJerk-mean-X','tBodyGyroJerk-mean-Y','tBodyGyroJerk-mean-Z','tBodyGyroJerk-std-X','tBodyGyroJerk-std-Y','tBodyGyroJerk-std-Z','tBodyAccMag-mean','tBodyAccMag-std','tGravityAccMag-mean','tGravityAccMag-std','tBodyAccJerkMag-mean','tBodyAccJerkMag-std','tBodyGyroMag-mean','tBodyGyroMag-std','tBodyGyroJerkMag-mean','tBodyGyroJerkMag-std','fBodyAcc-mean-X','fBodyAcc-mean-Y','fBodyAcc-mean-Z','fBodyAcc-std-X','fBodyAcc-std-Y','fBodyAcc-std-Z','fBodyAccJerk-mean-X','fBodyAccJerk-mean-Y','fBodyAccJerk-mean-Z','fBodyAccJerk-std-X','fBodyAccJerk-std-Y','fBodyAccJerk-std-Z','fBodyGyro-mean-X','fBodyGyro-mean-Y','fBodyGyro-mean-Z','fBodyGyro-std-X','fBodyGyro-std-Y','fBodyGyro-std-Z','fBodyAccMag-mean','fBodyAccMag-std','fBodyBodyAccJerkMag-mean','fBodyBodyAccJerkMag-std','fBodyBodyGyroMag-mean','fBodyBodyGyroMag-std','fBodyBodyGyroJerkMag-mean','fBodyBodyGyroJerkMag','angle_tBodyAccMean_gravityMean','angle_tBodyGyro_gravityMean','angle_tBodyGyroMean_gravityMean','angle_tBodyGyroJerkMean_gravityMean','angle_X_gravityMean','angle_Y_gravityMean','angle_Z_gravityMean'),widths=c(16,16,16,16,16,16,-544,16,16,16,16,16,16,-544,16,16,16,16,16,16,-544,16,16,16,16,16,16,-544,16,16,16,16,16,16,-544,16,16,-176,16,16,-176,16,16,-176,16,16,-176,16,16,-176,16,16,16,16,16,16,-1168,16,16,16,16,16,16,-1168,16,16,16,16,16,16,-1168,16,16,-176,16,16,-176,16,16,-176,16,16,-176,16,16,16,16,16,16,16))})
        Reduce(function(x,y) {rbind(x,y)}, datalist)}
    DF=multmerge(directory)
    DF_mean=sapply(DF,mean)
    write.table(DF_mean,file="./average_measurement.txt",row.names=FALSE,col.names=FALSE,sep="\t",quote=FALSE)
}
