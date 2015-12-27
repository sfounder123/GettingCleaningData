# GettingCleaningData Project Readme
Samsung Galaxy S smartphone collect 30 volunteers within an age bracket of 19-48 years activities. Each person perform six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
<br>
The R script run_analysis.R perform the following task to produce average_measurement.txt - the result of the task 5.
<br>1. Merges the training and the test sets to create one data set.
<br>2. Extracts only the measurements on the mean and standard deviation for each measurement.
<br>3. Uses descriptive activity names to name the activities in the data set
<br>4. Appropriately labels the data set with descriptive variable names. 
<br>5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.</br>

<br>To run the R script, please follow the following steps in R except step A:
<br>A. Copy X_Train.txt and X_test.txt data under the source code sub-folder "data"  (“directory” has sub-folder as the default value)
<br>B. setwd to the same directory as this source code
<br>C. source("run_analysis.R")
<br>D. run_analysis(). Be aware the folder should not have other files other than data file.

<br>The code is listed in below (run_analysts.R):</br>
<br>run_analysis <- function(directory="./"){
<br>&nbsb&nbsb    multmerge = function(mypath,colnames,colfmt){
<br>&nbsb&nbsb&nbsb&nbsb        filenames=list.files(path=mypath,pattern="X_[a-zA-Z]{1,}.txt", full.names=TRUE)
<br>&nbsb&nbsb&nbsb&nbsb        datalist = lapply(filenames, function(x){read.fwf(file=x,col.names=colnames,widths=colfmt)})
<br>&nbsb&nbsb&nbsb&nbsb        Reduce(function(x,y) {rbind(x,y)}, datalist)}
<br>&nbsb&nbsb    dfn<-read.table(paste(directory,"features.txt",sep="/"))
<br>&nbsb&nbsb    vname<-gsub("\\(|\\)|-|,","",dfn[grepl("[sS]td|[mM]ean",dfn$V2)=="TRUE","V2"])
<br>&nbsb&nbsb    fmt<-as.numeric(gsub("FALSE","-16",gsub("TRUE","16",grepl("[sS]td|[Mm]ean",dfn$V2))))
<br>&nbsb&nbsb    DF=multmerge(directory,vname,fmt)
<br>&nbsb&nbsb    DF_mean=sapply(DF,mean)
<br>&nbsb&nbsb    write.table(DF_mean,file="./average_measurement.txt",row.names=FALSE,col.names=FALSE,sep="\t",quote=FALSE)
<br>&nbsb&nbsb    write.table(vname,file="./average_measurement_descriptions.txt",row.names=FALSE,col.names=FALSE,sep="\t",quote=FALSE)
<br>}


