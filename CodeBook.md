CodeBook.md
author: Rayned Wiles
Project for Coursera-Getting and Cleaning Data

This code book describes the data contained in harAggDataLong (projectTidyWide.csv). This data was produced from data collected from accelerometers on the Samsung Galaxy S smartphone as reported by http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones   The data set consists of 11,880 observations of 4 variables.  See Appendix A for more information of the data collection.


subject         integer
    An identifier of the subject who carried out the experiment.
    
    1
    2
    3
    4
    5
    6
    7
    8
    9
    10
    11
    12
    13
    14
    15
    16
    17
    18
    19
    20
    21
    22
    23
    24
    25
    26
    27
    28
    29
    30
    
    
activityname    character
    Description of the activity performed while being measured.
    
    Walking
	Walking Upstairs   
	Walking Downstairs
	Sitting
	Standing
	Laying
    
measurement     character
    The feature vector, namely, data categories that were computed from the measurements. See Appendix B for more discussion.
    
    tbodyaccmeanx			Time Body Acceleration - Mean()-X
	tbodyaccmeany			Time Body Acceleration - Mean()-Y
	tbodyaccmeanz			Time Body Acceleration - Mean()-Z
	tbodyaccstdx			Time Body Acceleration - Standard Deviation()-X
	tbodyaccstdy			Time Body Acceleration - Standard Deviation()-Y
	tbodyaccstdz			Time Body Acceleration - Standard Deviation()-Z
	tgravityaccmeanx		Time Gravity Acceleration - Mean()-X
	tgravityaccmeany		Time Gravity Acceleration - Mean()-Y
	tgravityaccmeanz		Time Gravity Acceleration - Mean()-Z
	tgravityaccstdx			Time Gravity Acceleration - Standard Deviation()-X
	tgravityaccstdy			Time Gravity Acceleration - Standard Deviation()-Y
	tgravityaccstdz			Time Gravity Acceleration - Standard Deviation()-Z
	tbodyaccjerkmeanx		Time Body Acceleration Jerk - Mean()-X
	tbodyaccjerkmeany		Time Body Acceleration Jerk - Mean()-Y
	tbodyaccjerkmeanz		Time Body Acceleration Jerk - Mean()-Z
	tbodyaccjerkstdx		Time Body Acceleration Jerk - Standard Deviation()-X
	tbodyaccjerkstdy		Time Body Acceleration Jerk - Standard Deviation()-Y
	tbodyaccjerkstdz		Time Body Acceleration Jerk - Standard Deviation()-Z
	tbodygyromeanx			Time Body Gyro - Mean()-X
	tbodygyromeany			Time Body Gyro - Mean()-Y
	tbodygyromeanz			Time Body Gyro - Mean()-Z
	tbodygyrostdx			Time Body Gyro - Standard Deviation()-X
	tbodygyrostdy			Time Body Gyro - Standard Deviation()-Y
	tbodygyrostdz			Time Body Gyro - Standard Deviation()-Z
	tbodygyrojerkmeanx		Time Body Gyro Jerk - Mean()-X
	tbodygyrojerkmeany		Time Body Gyro Jerk - Mean()-Y
	tbodygyrojerkmeanz		Time Body Gyro Jerk - Mean()-Z
	tbodygyrojerkstdx		Time Body Gyro Jerk - Standard Deviation()-X
	tbodygyrojerkstdy		Time Body Gyro Jerk - Standard Deviation()-Y
	tbodygyrojerkstdz		Time Body Gyro Jerk - Standard Deviation()-Z
	tbodyaccmagmean			Time Body Acceleration Magnitude - Mean()
	tbodyaccmagstd			Time Body Acceleration Magnitude - Standard Deviation()
	tgravityaccmagmean		Time Gravity Acceleration Magnitude - Mean()
	tgravityaccmagstd		Time Gravity Acceleration Magnitude - Standard Deviation()
	tbodyaccjerkmagmean		Time Body Acceleration Jerk Magnitude - Mean()
	tbodyaccjerkmagstd		Time Body Acceleration Jerk Magnitude - Standard Deviation()
	tbodygyromagmean		Time Body Gyro Magnitude - Mean()
	tbodygyromagstd			Time Body Gyro Magnitude - Standard Deviation()
	tbodygyrojerkmagmean		Time Body Gyro Jerk Magnitude - Mean()
	tbodygyrojerkmagstd		Time Body Gyro Jerk Magnitude - Standard Deviation()
	fbodyaccmeanx			Frequency Body Acceleration - Mean()-X
	fbodyaccmeany			Frequency Body Acceleration - Mean()-Y
	fbodyaccmeanz			Frequency Body Acceleration - Mean()-Z
	fbodyaccstdx			Frequency Body Acceleration - Standard Deviation()-X
	fbodyaccstdy			Frequency Body Acceleration - Standard Deviation()-Y
	fbodyaccstdz			Frequency Body Acceleration - Standard Deviation()-Z
	fbodyaccjerkmeanx		Frequency Body Acceleration Jerk - Mean()-X
	fbodyaccjerkmeany		Frequency Body Acceleration Jerk - Mean()-Y
	fbodyaccjerkmeanz		Frequency Body Acceleration Jerk - Mean()-Z
	fbodyaccjerkstdx		Frequency Body Acceleration Jerk - Standard Deviation()-X
	fbodyaccjerkstdy		Frequency Body Acceleration Jerk - Standard Deviation()-Y
	fbodyaccjerkstdz		Frequency Body Acceleration Jerk - Standard Deviation()-Z
	fbodygyromeanx			Frequency Body Gyro - Mean()-X
	fbodygyromeany			Frequency Body Gyro - Mean()-Y
	fbodygyromeanz			Frequency Body Gyro - Mean()-Z
	fbodygyrostdx			Frequency Body Gyro - Standard Deviation()-X
	fbodygyrostdy			Frequency Body Gyro - Standard Deviation()-Y
	fbodygyrostdz			Frequency Body Gyro - Standard Deviation()-Z
	fbodyaccmagmean			Frequency Body Acceleration Magnitude - Mean()
	fbodyaccmagstd			Frequency Body Acceleration Magnitude - Standard Deviation()
	fbodybodyaccjerkmagmean		Frequency Body Body Acceleration Jerk Magnitude - Mean()
	fbodybodyaccjerkmagstd		Frequency Body Body Acceleration Jerk Magnitude - Standard Deviation()
	fbodybodygyromagmean		Frequency Body Body Gyro Magnitude - Mean()
	fbodybodygyromagstd		Frequency Body Body Gyro Magnitude - Standard Deviation()
	fbodybodygyrojerkmagmean	Frequency Body Body Gyro Jerk Magnitude - Mean()
	fbodybodygyrojerkmagstd		Frequency Body Body Gyro Jerk Magnitude - Standard Deviation()
	

value           number
    The values of the various measurement categories.
    



Appendix A

Description of the Data Set from the source:

 http://archive.ics.uci.edu/ml/datasets/Human+Activity  +Recognition+Using+Smartphones

Human Activity Recognition Using Smartphones Data Set

Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Attribute Information:

For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment. 

License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.




Appendix B

Description of the features(Measurements) From Original Data Set
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  
Feature Selection 

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

