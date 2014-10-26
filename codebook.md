
##Study Design

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

#For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


#Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean




##The dataset includes the following files:
=========================================
Readme.md - explains the script run_analysis.R 
codebook.md - Description of all variables and any transformation performed





#Variables in file

activity - Activity code for each activity
activity_name - Activity descriptive name
subject - subject who performed the activity

Average of Mean / Standard deviation of all linear / angular movements measured in the experiment 

avgTimeBodyAcc-mean()-X
avgTimeBodyAcc-mean()-Y
avgTimeBodyAcc-mean()-Z
avgTimeBodyAcc-std()-X
avgTimeBodyAcc-std()-Y
avgTimeBodyAcc-std()-Z
avgTimeGravityAcc-mean()-X
avgTimeGravityAcc-mean()-Y
avgTimeGravityAcc-mean()-Z
avgTimeGravityAcc-std()-X
avgTimeGravityAcc-std()-Y
avgTimeGravityAcc-std()-Z
avgTimeBodyAccJerk-mean()-X
avgTimeBodyAccJerk-mean()-Y
avgTimeBodyAccJerk-mean()-Z
avgTimeBodyAccJerk-std()-X
avgTimeBodyAccJerk-std()-Y
avgTimeBodyAccJerk-std()-Z
avgTimeBodyGyro-mean()-X
avgTimeBodyGyro-mean()-Y
avgTimeBodyGyro-mean()-Z
avgTimeBodyGyro-std()-X
avgTimeBodyGyro-std()-Y
avgTimeBodyGyro-std()-Z
avgTimeBodyGyroJerk-mean()-X
avgTimeBodyGyroJerk-mean()-Y
avgTimeBodyGyroJerk-mean()-Z
avgTimeBodyGyroJerk-std()-X
avgTimeBodyGyroJerk-std()-Y
avgTimeBodyGyroJerk-std()-Z
avgTimeBodyAccMag-mean()
avgTimeBodyAccMag-std()
avgTimeGravityAccMag-mean()
avgTimeGravityAccMag-std()
avgTimeBodyAccJerkMag-mean()
avgTimeBodyAccJerkMag-std()
avgTimeBodyGyroMag-mean()
avgTimeBodyGyroMag-std()
avgTimeBodyGyroJerkMag-mean()
avgTimeBodyGyroJerkMag-std()
avgFreqBodyAcc-mean()-X
avgFreqBodyAcc-mean()-Y
avgFreqBodyAcc-mean()-Z
avgFreqBodyAcc-std()-X
avgFreqBodyAcc-std()-Y
avgFreqBodyAcc-std()-Z
avgFreqBodyAccJerk-mean()-X
avgFreqBodyAccJerk-mean()-Y
avgFreqBodyAccJerk-mean()-Z
avgFreqBodyAccJerk-std()-X
avgFreqBodyAccJerk-std()-Y
avgFreqBodyAccJerk-std()-Z
avgFreqBodyGyro-mean()-X
avgFreqBodyGyro-mean()-Y
avgFreqBodyGyro-mean()-Z
avgFreqBodyGyro-std()-X
avgFreqBodyGyro-std()-Y
avgFreqBodyGyro-std()-Z
avgFreqBodyAccMag-mean()
avgFreqBodyAccMag-std()
avgFreqBodyBodyAccJerkMag-mean()
avgFreqBodyBodyAccJerkMag-std()
avgFreqBodyBodyGyroMag-mean()
avgFreqBodyBodyGyroMag-std()
avgFreqBodyBodyGyroJerkMag-mean()
avgFreqBodyBodyGyroJerkMag-std()

##Data Transformation done

1) Download the data set from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

2)Read the Test and train variables from
X_test.txt / X_train.txt

3) Read the column names from data from Y_train/Y_Test.txt and combine them with data in 1)

4) Read sibject column from subject_ files and combine with data in 3)

5) Combine data in 4) with Activity labels read from Activity_labels.txt

6) pull out only std / mean variables from data set in 5) 

7) get average of all variables in 6) for each actvity-subject combination providing a total of 180 combination

8) Rename variables in 7) to make them more descriptive and write them to a file