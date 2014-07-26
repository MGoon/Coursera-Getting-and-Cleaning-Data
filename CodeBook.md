		DATA DICTIONARY - getdata-005 Project.txt
subject_id
	integer - identifier for subject participating in study
activity_type	
	string - denotes activity type measured
	o	WALKING
	o	WALKING_UPSTAIRS
	o	WALKING_DOWNSTAIRS
	o	SITTING
	o	STANDING
	o	LAYING

Variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
	o	tBodyAcc-XYZ
	o	tGravityAcc-XYZ	
	o	tBodyAccJerk-XYZ
	o	tBodyGyro-XYZ
	o	tBodyGyroJerk-XYZ
	o	tBodyAccMag
	o	tGravityAccMag
	o	tBodyAccJerkMag
	o	tBodyGyroMag
	o	tBodyGyroJerkMag
	o	fBodyAcc-XYZ
	o	fBodyAccJerk-XYZ
	o	fBodyGyro-XYZ
	o	fBodyAccMag
	o	fBodyAccJerkMag
	o	fBodyGyroMag
	o	fBodyGyroJerkMag
The set of variables that were estimated from these signals are:
	o	mean(): Mean value
	o	std(): Standard deviation
Averages were then calculated for all above measurements grouped by subject_id and activity_type
