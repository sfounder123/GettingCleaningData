### 1. Copy X_Train.txt, X_test.txt data, and features.txt to source code folder (directory default to current folder)
### 2. setwd to the same dir as this source code
### 3. source("run_analysis.R")
### 4. run_analysis() or the path run_analysis(path) that have those data file only
run_analysis <- function(directory="./"){
    multmerge = function(mypath,colnames,colfmt){
        filenames=list.files(path=mypath,pattern="X_[a-zA-Z]{1,}.txt", full.names=TRUE)
        datalist = lapply(filenames, function(x){read.fwf(file=x,col.names=colnames,widths=colfmt)})
        Reduce(function(x,y) {rbind(x,y)}, datalist)}
    dfn<-read.table(paste(directory,"features.txt",sep="/"))
    vname<-gsub("\\(|\\)|-|,","",dfn[grepl("[sS]td|[mM]ean",dfn$V2)=="TRUE","V2"])
    fmt<-as.numeric(gsub("FALSE","-16",gsub("TRUE","16",grepl("[sS]td|[Mm]ean",dfn$V2))))
    DF=multmerge(directory,vname,fmt)
    DF_mean=sapply(DF,mean)
    write.table(DF_mean,file="./average_measurement.txt",row.names=FALSE,col.names=FALSE,sep="\t",quote=FALSE)
    write.table(vname,file="./average_measurement_descriptions.txt",row.names=FALSE,col.names=FALSE,sep="\t",quote=FALSE)
}
