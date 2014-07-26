run_analysis.r

assumptions: data from getdata-projectfiles-UCI HAR Dataset.zip is unzipped into the data directory in your working directory in R, maintaining the directory structure within the zip file.
 ("./data/UCI HAR Dataset/test/") would be where the test data resides and ("./data/UCI HAR Dataset/train/") would be where the train data resides
 
run_analysis.r does the following:

1 - reads the test data into R from files in: ./data/UCI HAR Dataset/test/
2 - reads the training data into R from files in: ./data/UCI HAR Dataset/train/
3 - reads column labels into R from ./data/UCI HAR Dataset/features.txt
4 - reads activity labels into R from ./data/UCI HAR Dataset/activity_labels.txt
5 - sets column names in both test and training data
6 - extracts the mean and standard deviation measurements from the test and train data files (x_test, x_train)
    criteria: "mean" or "std" is contained in the column name for the data
7 - binds activity type and subject id to measurement data
8 - binds the two data sets together to form a complete data set
9 - sets activity types according to activity_labels.txt
10 - calculates averages for all measurements grouped on subject_id and activity_type
11 - outputs a tidy data table "getdata-005 Project.txt"
