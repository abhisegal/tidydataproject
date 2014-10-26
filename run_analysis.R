
setwd("C:\\Users\\abhishek\\coursera\\3 - cleaning and retrieving data\\project\\UCI HAR Dataset")
library(data.table)



readall <- function()
{
  ##READING AND PREPARING THE TEST DATASET
  xtest<-read.table("test\\X_test.txt",fill=TRUE)
  features<-read.table("features.txt",stringsAsFactors=FALSE)
  feat<-features[,2]
  ##ASSIGN FEATURE NAMES TO COLUMN
  names(xtest)<-feat
  
  ##ASSIGN ACTIVITY AND SUBJECT CODES RESPECTIVE TO EACH ROW
  ytest<-read.table("test\\Y_test.txt",fill=TRUE)
  names(ytest)<-"activity"
  subtest<-read.table("test\\subject_test.txt",fill=TRUE)
  names(subtest)<-"subject"
  test<-cbind(ytest,subtest,xtest)
  
  ##READING AND PREPARING THE TRAIN DATASET
  xtrain<-read.table("train\\X_train.txt",fill=TRUE)
  
  ##ASSIGN FEATURE NAMES TO COLUMN
  names(xtrain)<-feat
  
  ##ASSIGN ACTIVITY AND SUBJECT CODES RESPECTIVE TO EACH ROW
  ytrain<-read.table("train\\Y_train.txt",fill=TRUE)
  names(ytrain)<-"activity"
  subtrain<-read.table("train\\subject_train.txt",fill=TRUE)
  names(subtrain)<-"subject"
  train<-cbind(ytrain,subtrain,xtrain)
  
  ##COMBINE TEST AND TRAIN TO GET COMPLETE UNIVERSE
  return(data.table(rbind(test,train)))
  
}

transform<- function(x)
{
  
  ##ASSIGN DESCRIPTIVE ACTIVITY NAMES
  
  ##READ ACTIVITY CODE MAPPING
  dt<-read.table("activity_labels.txt",stringsAsFactors=FALSE)
  setnames(dt,c("activity","activity_name"))
  activity_lable<-data.table(dt)
  
  ##PULL OUT ONLY STD AND MEAN COLUMNS
  utable<-data.table(x)
  features<-read.table("features.txt",stringsAsFactors=FALSE)
  feat<-features[,2]
  st<-c("mean","std")
  pattern<-paste(st,collapse="|")
  col<-grepl(pattern,feat)
  feat1<-feat[col]
  st1<-("meanFreq")
  col1<-grepl(st1,feat1)
  u<-feat1[!col1]
    
  u[length(u)+1]="activity"
  u[length(u)+1]="subject"
  
  ##ASSIGN DESCRIPTIVE COLUMN NAMES
  smuniv<-subset(utable,select=u)
  
  
  ##MERGE TO ACTIVITY LABEL NAMES FOR ACTIVITY DESCRIPTIION
  setkeyv(activity_lable,"activity")
  setkeyv(smuniv,"activity")
  final<-merge(smuniv,activity_lable,all.x=TRUE)
  
  ##GET AVG OF ALLSTD AND MEAN COLUMNS
  agg<-ddply(final,.(activity,activity_name,subject),numcolwise(mean),na.rm=TRUE)
  
  nm<-names(agg)
  a<-gsub("^t","avgTime",nm)
  a1<-gsub("^f","avgFreq",a)
  setnames(agg,a1)
  
  return(agg)
  
}

writedata<- function(a)
{
  
  write.table(a,row.names=FALSE,file="transformed_avg_metrics.txt")
}