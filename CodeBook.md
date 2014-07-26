DATA DICTIONARY - getdata-005 Project.txt

subject\_id

integer - identifier for subject participating in study

activity\_type

string - denotes activity type measured

- 
  - WALKING
  - WALKING\_UPSTAIRS
  - WALKING\_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING

Variables of the feature vector for each pattern: 

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

-
  - tBodyAcc-XYZ
  - tGravityAcc-XYZ    
  - tBodyAccJerk-XYZ
  - tBodyGyro-XYZ
  - tBodyGyroJerk-XYZ
  - tBodyAccMag
  - tGravityAccMag
  - tBodyAccJerkMag
  - tBodyGyroMag
  - tBodyGyroJerkMag
  - fBodyAcc-XYZ
  - fBodyAccJerk-XYZ
  - fBodyGyro-XYZ
  - fBodyAccMag
  - fBodyAccJerkMag
  - fBodyGyroMag
  - fBodyGyroJerkMag



The set of variables that were estimated from these signals are:
- 
  - mean(): Mean value
  - std(): Standard deviation

Averages were then calculated for all above measurements grouped by subject\_id and activity\_type
