## Codebook for the *Human Activity Recognition Using Smartphones* data set

There are two data files: `dataset.txt` contains individual observations, while `averages.txt` contains the averages per activity and per test subject. The columns are as follows:

* Activity (factor):  
	The activity performed during the measurement. The following self-explanatory activity descriptions are valid options (numeric):
    - WALKING
    - WALKING UPSTAIRS
    - WALKING DOWNSTAIRS
    - SITTING
    - STANDING
    - LAYING

* Subject (integer):  
	The unique number of the test subject performing the activity while carrying the mobile phone. Range: 1-30 (inclusive)
* tBodyAcc.mean.X (numeric):  
	Mean body acceleration along the X-axis, averaged over all samples per activity and subject, in units of gravity (g)
* tBodyAcc.mean.Y (numeric):  
	Mean body acceleration along the Y-axis, averaged over all samples per activity and subject, in units of gravity (g)
* tBodyAcc.mean.Z (numeric):  
	Mean body acceleration along the Z-axis, averaged over all samples per activity and subject, in units of gravity (g)
* tBodyAcc.std.X (numeric):  
	Standard deviation of the body acceleration along the X-axis, averaged over all samples per activity and subject, in units of gravity (g)
* tBodyAcc.std.Y (numeric):  
	Standard deviation of the body acceleration along the Y-axis, averaged over all samples per activity and subject, in units of gravity (g)
* tBodyAcc.std.Z (numeric):  
	Standard deviation of the body acceleration along the Z-axis, averaged over all samples per activity and subject, in units of gravity (g)
* tGravityAcc.mean.X (numeric):  
	Mean gravitational acceleration along the X-axis, averaged over all samples per activity and subject, in units of gravity (g)
* tGravityAcc.mean.Y (numeric):  
	Mean gravitational acceleration along the Y-axis, averaged over all samples per activity and subject, in units of gravity (g)
* tGravityAcc.mean.Z (numeric):  
	Mean gravitational acceleration along the Z-axis, averaged over all samples per activity and subject, in units of gravity (g)
* tGravityAcc.std.X (numeric):  
	Standard deviation of the gravitational acceleration along the X-axis, averaged over all samples per activity and subject, in units of gravity (g)
* tGravityAcc.std.Y (numeric):  
	Standard deviation of the gravitational acceleration along the Y-axis, averaged over all samples per activity and subject, in units of gravity (g)
* tGravityAcc.std.Z (numeric):  
	Standard deviation of the gravitational acceleration along the Z-axis, averaged over all samples per activity and subject, in units of gravity (g)
* tBodyAccJerk.mean.X (numeric):  
	Mean rate of change of the body acceleration along the X-axis, averaged over all samples per activity and subject, in units of gravity (g) per second
* tBodyAccJerk.mean.Y (numeric):  
	Mean rate of change of the body acceleration along the Y-axis, averaged over all samples per activity and subject, in units of gravity (g) per second
* tBodyAccJerk.mean.Z (numeric):  
	Mean rate of change of the body acceleration along the Z-axis, averaged over all samples per activity and subject, in units of gravity (g) per second
* tBodyAccJerk.std.X (numeric):  
	Standard deviation of the rate of change of the body acceleration along the X-axis, averaged over all samples per activity and subject, in units of gravity (g) per second
* tBodyAccJerk.std.Y (numeric):  
	Standard deviation of the rate of change of the body acceleration along the Y-axis, averaged over all samples per activity and subject, in units of gravity (g) per second
* tBodyAccJerk.std.Z (numeric):  
	Standard deviation of the rate of change of the body acceleration along the Z-axis, averaged over all samples per activity and subject, in units of gravity (g) per second
* tBodyGyro.std.X (numeric):  
	Mean body angular velocity along the X-axis, averaged over all samples per activity and subject, in radians per second
* tBodyGyro.std.Y (numeric):  
	Mean body angular velocity along the Y-axis, averaged over all samples per activity and subject, in radians per second
* tBodyGyro.std.Z (numeric):  
	Mean body angular velocity along the Z-axis, averaged over all samples per activity and subject, in radians per second
* tBodyGyro.std.X (numeric):  
	Standard deviation of the body angular velocity along the X-axis, averaged over all samples per activity and subject, in radians per second
* tBodyGyro.std.Y (numeric):  
	Standard deviation of the body angular velocity along the Y-axis, averaged over all samples per activity and subject, in radians per second
* tBodyGyro.std.Z (numeric):  
	Standard deviation of the body angular velocity along the Z-axis, averaged over all samples per activity and subject, in radians per second
* tBodyGyroJerk.mean.X (numeric):  
	Mean rate of change of the body angular velocity along the X-axis, averaged over all samples per activity and subject, in radians per second-squared
* tBodyGyroJerk.mean.Y (numeric):  
	Mean rate of change of the body angular velocity along the Y-axis, averaged over all samples per activity and subject, in radians per second-squared
* tBodyGyroJerk.mean.Z (numeric):  
	Mean rate of change of the body angular velocity along the Z-axis, averaged over all samples per activity and subject, in radians per second-squared
* tBodyGyroJerk.std.X (numeric):  
	Standard deviation of the rate of change of the body angular velocity along the X-axis, averaged over all samples per activity and subject, in radians per second-squared
* tBodyGyroJerk.std.Y (numeric):  
	Standard deviation of the rate of change of the body angular velocity along the Y-axis, averaged over all samples per activity and subject, in radians per second-squared
* tBodyGyroJerk.std.Z (numeric):  
	Standard deviation of the rate of change of the body angular velocity along the Z-axis, averaged over all samples per activity and subject, in radians per second-squared
* tBodyAccMag.mean (numeric):  
	Mean magnitude (Euclidean norm) of the of the body acceleration, in units of gravity (g)
* tBodyAccMag.std (numeric):  
	Standard deviation of the magnitude (Euclidean norm) of the body acceleration, in units of gravity (g)
* tGravityAccMag.mean (numeric):  
	Mean magnitude (Euclidean norm) of the of the gravitational acceleration, in units of gravity (g)
* tGravityAccMag.std (numeric):  
	Standard deviation of the magnitude (Euclidean norm) of the gravitational acceleration, in units of gravity (g)
* tBodyAccJerkMag.mean (numeric):  
	Mean magnitude (Euclidean norm) of the rate of change of the body acceleration, in units of gravity (g) per second
* tBodyAccJerkMag.std (numeric):  
	Standard deviation of the magnitude (Euclidean norm) of the rate of change of the body acceleration, in units of gravity (g) per second
* tBodyGyroMag.mean (numeric):  
	Mean magnitude (Euclidean norm) of the body angular velocity, in radians per second
* tBodyGyroMag.std (numeric):  
	Standard deviation of the magnitude (Euclidean norm) of the body angular velocity, in radians per second
* tBodyGyroJerkMag.mean (numeric):  
	Mean magnitude (Euclidean norm) of the rate of change of the body angular velocity, in radians per second
* tBodyGyroJerkMag.std (numeric):  
	Standard deviation of the magnitude (Euclidean norm) of the rate of change of the body angular velocity, in radians per second
* fBodyAcc.mean.X (numeric):  
	Mean Fourier-transformed body acceleration along the X-axis, in units of gravity (g)
* fBodyAcc.mean.Y (numeric):  
	Mean Fourier-transformed body acceleration along the Y-axis, in units of gravity (g)
* fBodyAcc.mean.Z (numeric):  
	Mean Fourier-transformed body acceleration along the Z-axis, in units of gravity (g)
* fBodyAcc.std.X (numeric):  
	Standard deviation of the Fourier-transformed body acceleration along the X-axis, in units of gravity (g)
* fBodyAcc.std.Y (numeric):  
	Standard deviation of the Fourier-transformed body acceleration along the Y-axis, in units of gravity (g)
* fBodyAcc.std.Z (numeric):  
	Standard deviation of the Fourier-transformed body acceleration along the Z-axis, in units of gravity (g)
* fBodyAccJerk.mean.X (numeric):  
	Mean Fourier-transformed rate of change of the body acceleration along the X-axis, in units of gravity (g) per second
* fBodyAccJerk.mean.Y (numeric):  
	Mean Fourier-transformed rate of change of the body acceleration along the Y-axis, in units of gravity (g) per second
* fBodyAccJerk.mean.Z (numeric):  
	Mean Fourier-transformed rate of change of the body acceleration along the Z-axis, in units of gravity (g) per second
* fBodyAccJerk.std.X (numeric):  
	Standard deviation of the Fourier-transformed rate of change of the body acceleration along the X-axis, in units of gravity (g) per second
* fBodyAccJerk.std.Y (numeric):  
	Standard deviation of the Fourier-transformed rate of change of the body acceleration along the Y-axis, in units of gravity (g) per second
* fBodyAccJerk.std.Z (numeric):  
	Standard deviation of the Fourier-transformed rate of change of the body acceleration along the Z-axis, in units of gravity (g) per second
* fBodyGyro.mean.X (numeric):  
	Mean Fourier-transformed body angular velocity along the X-axis, in radians per second
* fBodyGyro.mean.Y (numeric):  
	Mean Fourier-transformed body angular velocity along the Y-axis, in radians per second
* fBodyGyro.mean.Z (numeric):  
	Mean Fourier-transformed body angular velocity along the Z-axis, in radians per second
* fBodyGyro.std.X (numeric):  
	Standard deviation of the Fourier-transformed body angular velocity along the X-axis, in radians per second
* fBodyGyro.std.Y (numeric):  
	Standard deviation of the Fourier-transformed body angular velocity along the Y-axis, in radians per second
* fBodyGyro.std.Z (numeric):  
	Standard deviation of the Fourier-transformed body angular velocity along the Z-axis, in radians per second
* fBodyAccMag.mean (numeric):  
	Mean Fourier-transformed magnitude (Euclidean norm) of the body acceleration, in units of gravity (g)
* fBodyAccMag.std (numeric):  
	Standard deviation of the Fourier-transformed magnitude (Euclidean norm) of the body acceleration, in units of gravity (g)
* fBodyBodyAccJerkMag.mean (numeric):  
	Mean Fourier-transformed magnitude (Euclidean norm) of the rate of change of the body acceleration, in units of gravity (g) per second
* fBodyBodyAccJerkMag.std (numeric):  
	Standard deviation of the Fourier-transformed magnitude (Euclidean norm) of the rate of change of the body acceleration, in units of gravity (g) per second
* fBodyBodyGyroMag.mean (numeric):  
	Mean Fourier-transformed magnitude (Euclidean norm) of the body angular velocity, in radians per second
* fBodyBodyGyroMag.std (numeric):  
	Standard deviation of the Fourier-transformed magnitude (Euclidean norm) of the body angular velocity, in radians per second
* fBodyBodyGyroJerkMag.mean (numeric):  
	Mean Fourier-transformed magnitude (Euclidean norm) of the rate of change of the body angular velocity, in radians per second-squared
* fBodyBodyGyroJerkMag.std (numeric):  
	Standard deviation of the Fourier-transformed magnitude (Euclidean norm) of the rate of change of the body angular velocity, in radians per second-squared