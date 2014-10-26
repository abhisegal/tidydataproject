
SAMSUNG Wearable tech experiement

1) This repo contains a script file run_analysis.R
2) codebook.md
3) readme.md

Steps to run the script file
- Unzip the file from the following location
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

- Change the WD at top of script file to be set to the folder UCI HAR Dataset
- Source the script file after placing it in wd
- Run the steps below

1) a<-readall()
2) final<-transform(a)
3) writedata(final)

A file by the name transformed_avg_metrics.txt should be available in the working directory

transformed_avg_metrics.txt
