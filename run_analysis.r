run_analysis <- function(){

## read test data
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

## read training data
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

## read column labels
column_labels <- read.table("./data/UCI HAR Dataset/features.txt")

## read activity labels
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

## prime column names
colnames(subject_test)[1] <- "subject_id"
colnames(subject_train)[1] <- "subject_id"
colnames(y_test)[1] <- "activity_type"
colnames(y_train)[1] <- "activity_type"
colnames(x_test) <- column_labels[,2]
colnames(x_train) <- column_labels[,2]

## extract mean and std
v.names <- c("mean", "std")
test_extract <- x_test[,grepl(paste0(v.names,collapse="|"),colnames(x_test))]
train_extract <- x_train[,grepl(paste0(v.names,collapse="|"),colnames(x_train))]

## bind label column to data
test_bind <- cbind(y_test,test_extract)
test_bind <- cbind(subject_test,test_bind)
train_bind <- cbind(y_train,train_extract)
train_bind <- cbind(subject_train, train_bind)

## bind sets to complete data set
merged_data <- rbind(test_bind, train_bind)

## set activity types
xm <- match(merged_data$activity_type, activity_labels$V1)
merged_data$activity_type <- activity_labels[xm,2]

## Calculate averages
summary_df <- aggregate(merged_data[3:81], by = list(merged_data$subject_id,merged_data$activity_type), FUN = mean, na.rm = TRUE)
colnames(summary_df)[1] <- "subject_id"
colnames(summary_df)[2] <- "activity_type"

## write clean table
write.table(summary_df, file = "getdata-005 Project.txt", row.names = FALSE, col.names = TRUE) 
}