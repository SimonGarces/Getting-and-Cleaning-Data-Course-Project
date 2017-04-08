## Getting and cleaning data project Codebook 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 


### Variable Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


|                   Variable             |                    Description                   | 
|                   ---                  |                      ---                         |
|  Subject                                     | identifier of the subject performing an activity                                                | 
|  Activity |  name of the activity performed by the subject | 
|  tBodyAcc-mean()-X |  Mean value for body acceleration in X axis | 
|  tBodyAcc-mean()-Y |  Mean value for body acceleration in Y axis| 
|  tBodyAcc-mean()-Z |  Mean value for body acceleration in Z axis| 
|  tBodyAcc-std()-X |  Standard deviation for body acceleration in X axis| 
|  tBodyAcc-std()-Y |  Standard deviation for body acceleration in Y axis| 
|  tBodyAcc-std()-Z |  Standard deviation for body acceleration in Z axis| 
|  tGravityAcc-mean()-X |  Mean value gravity for body acceleration in X axis | 
|  tGravityAcc-mean()-Y |  Mean value gravity for body acceleration in Y axis| 
|  tGravityAcc-mean()-Z |  Mean value gravity  for body acceleration in Z axis| 
|  tGravityAcc-std()-X |  Standard deviation for body acceleration in X axis| 
|  tGravityAcc-std()-Y |  Standard deviation for body acceleration in Y axis| 
|  tGravityAcc-std()-Z |  Standard deviation for body acceleration in Z axis| 
|  tBodyAccJerk-mean()-X | Mean value for body acceleration Jerk in X axis| 
|  tBodyAccJerk-mean()-Y |  Mean value for body acceleration Jerk in Y axis| 
|  tBodyAccJerk-mean()-Z |  Mean value for body acceleration Jerk in Z axis|
|  tBodyAccJerk-std()-X |  Standard deviation for body acceleration Jerk in X axis| 
|  tBodyAccJerk-std()-Y |  Standard deviation for body acceleration Jerk in Y axis| 
|  tBodyAccJerk-std()-Z |  Standard deviation for body acceleration Jerk in Z axis| 
|  tBodyGyro-mean()-X |  Mean value gyro calcultaion for X axis | 
|  tBodyGyro-mean()-Y |  Mean value gyro calcultaion for Y axis| 
|  tBodyGyro-mean()-Z |  Mean value gyro calcultaion for Z axis| 
|  tBodyGyro-std()-X |  Standard deviation gyro calcultaion for X axis| 
|  tBodyGyro-std()-Y |  Standard deviation gyro calcultaion for Y axis| 
|  tBodyGyro-std()-Z |  Standard deviation gyro calcultaion for Z axis| 
|  tBodyGyroJerk-mean()-X |  Mean value gyro calculation Jerk for X axis | 
|  tBodyGyroJerk-mean()-Y |  Mean value gyro calculation Jerk for Y axis| 
|  tBodyGyroJerk-mean()-Z |  Mean value gyro calculation Jerk for Z axis| 
|  tBodyGyroJerk-std()-X |  Standard deviation gyro calculation Jerk for X axis| 
|  tBodyGyroJerk-std()-Y |  Standard deviation gyro calculation Jerk for Y axis| 
|  tBodyGyroJerk-std()-Z |  Standard deviation gyro calculation Jerk for Z axis| 
|  tBodyAccMag-mean() |  Mean value of gravity acceleration magnitude | 
|  tBodyAccMag-std() |  Standard deviation of gravity acceleration magnitude| 
|  tBodyGyroJerkMag-mean() |  Mean value of body gyro jerk magnitude| 
|  tBodyGyroJerkMag-std() |  Standard deviation of body gyro jerk magnitude | 
|  fBodyAcc-mean()-X |  Mean value of frequency body acceleration in X axis| 
|  fBodyAcc-mean()-Y |  Mean value of frequency body acceleration in Y axis| 
|  fBodyAcc-mean()-Z |  Mean value of frequency body acceleration in Z axis| 
|  fBodyAcc-std()-X |  Standard deviation of frequency body acceleration in X axis| 
|  fBodyAcc-std()-Y |  Standard deviation of frequency body acceleration in Y axis| 
|  fBodyAcc-std()-Z |  Standard deviation of frequency body acceleration in Z axis| 
|  fBodyAccJerk-mean()-X |  Mean value of frequency body acceleration jerk in X axis| 
|  fBodyAccJerk-mean()-Y |  Mean value of frequency body acceleration jerk in Y axis| 
|  fBodyAccJerk-mean()-Z |  Mean value of frequency body acceleration jerk in Z axis| 
|  fBodyAccJerk-std()-X |  Standard deviation of frequency body acceleration jerk in X axis| 
|  fBodyAccJerk-std()-Y |  Standard deviation of frequency body acceleration jerk in Y axis| 
|  fBodyAccJerk-std()-Z |  Standard deviation of frequency body acceleration jerk in Z axis| 
|  fBodyGyro-mean()-X |  Mean value of frequency body Gyro in X axis| 
|  fBodyGyro-mean()-Y |  Mean value of frequency body Gyro in Y axis| 
|  fBodyGyro-mean()-Z |  Mean value of frequency body Gyro in Z axis| 
|  fBodyGyro-std()-X |  Standard deviation of frequency body Gyro in X axis|
|  fBodyGyro-std()-Y |  Standard deviation of frequency body Gyro in Y axis| 
|  fBodyGyro-std()-Z |  Standard deviation of frequency body Gyro in Z axis| 
|  fBodyAccMag-mean() |  Mean value of frequency of body acceleration measurement| 
|  fBodyAccMag-std() |  Standard deviation of frequency of body acceleration measurement | 
|  fBodyBodyAccJerkMag-mean() |  Mean value of frequency of body acceleration measurement| 
|  fBodyBodyAccJerkMag-std() |  Standard deviation of frequency of body acceleration jerk measurement| 
|  fBodyBodyGyroMag-mean() |  Mean value of frequency of magnitude of body gyroscope measurement  | 
|  fBodyBodyGyroMag-std() |  Standard deviation of frequency of magnitude of body gyroscope measurement | 
|  fBodyBodyGyroJerkMag-mean() |  Mean value of frequency of magnitude of body gyroscope jerk measurement | 
|  fBodyBodyGyroJerkMag-std() |  Standard deviation frequency of magnitude of body gyroscope jerk measurement| 

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.