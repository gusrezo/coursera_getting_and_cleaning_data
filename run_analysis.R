library(dplyr)
## In order to execute this script, let's download the following zip file:
fileURL <-
    "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
## then, the content is unzipped and saved to the  working directory
destfile="UCI_HAR_Dataset.zip"    
fileURL <-
    "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"   
if(!file.exists(destfile)) {
    download.file(fileURL ,destfile,method="auto") 
    unzip (destfile)}


originalDir <- "UCI HAR Dataset"   ## directory where the data has been unzipped

## Step 1: Merges the training and the test sets to create one data set

#we read the files with the relevant data from the unzipped directory for the test and train datasets,
#and merge the tables by rows 

## X_test.txt, X_train.txt : 
## contains the dataset -561 features (as described in features.txt) per observation 
X_test <- read.table(paste(originalDir, "/test/X_test.txt", sep=""))
X_train <- read.table(paste(originalDir, "/train/X_train.txt", sep=""))
X_merged <- rbind(X_test, X_train)

## assign the name to each variable(feature). We take the names from the feature.txt file
features <- read.table(paste(originalDir, "/features.txt", sep=""))
names(X_merged)  <-features$V2

## subject_test.txt, subject_train.txt : 
## identifies which volunteer  (1-30) who participated in the experiment the observations in X_...txt
## is related to.
subject_test <- read.table(paste(originalDir, "/test/subject_test.txt", sep=""))
subject_train <- read.table(paste(originalDir, "/train/subject_train.txt", sep=""))
subject_merged <- rbind(subject_test, subject_train)
names(subject_merged) <-"subject_id"

## Y_test.txt, Y_train.txt : 
## identifies which activity  (1-6, features.txt)  the observations in X_...txt is related to.
Y_test <- read.table(paste(originalDir, "/test/Y_test.txt", sep=""))
Y_train <- read.table(paste(originalDir, "/train/Y_train.txt", sep=""))
Y_merged <- rbind(Y_test, Y_train)
names(Y_merged) <-"activity"

## merge the 3 tables (by columns)
untidy_data <- cbind(subject_merged, Y_merged, X_merged)


## Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 

## we select the 1st and 2nd columns (volunteerID and activity) and all the columns with measurements 
## whose names contains "mean()" or "std()"
tidy_data <- untidy_data[ , c(1,2, grep("mean\\(\\)|std\\(\\)", names(untidy_data)))]

# free the memory of the untidy variables with the observations since we're not longer going to use them
remove(untidy_data, X_merged, X_test, X_train)

## Step 3: Uses descriptive activity names to name the activities in the data set

## we read the activity labels and replace in the dataset the numeric id with the textual description.
activity_labels <- read.table(paste(originalDir, "/activity_labels.txt", sep=""))
tidy_data$activity <- factor(tidy_data$activity, labels = activity_labels$V2)


## Step 4: Appropriately labels the data set with descriptive variable names

# We will replace "t" with "time" in the variables related to time, 
#"f" with "frequency" in the variables related to frequency,
#and remove the parenthesis after mean or std.
names(tidy_data) <- sub("^t","time", names(tidy_data))
names(tidy_data) <- sub("^f","frequency", names(tidy_data))
names(tidy_data) <- gsub("\\(\\)","", names(tidy_data))


## Save the tidy dataset to a file
write.table(tidy_data, file="tidyData.txt", row.name=FALSE)


## Step 5: creates a second, independent tidy data set with the average of each variable 
## for each activity and each subject
summary_tidy_data <- tidy_data %>% group_by(subject_id, activity) %>% summarise_all(mean)

## Save the tidy dataset summary to a file
write.table(summary_tidy_data, file="summaryTidyData.txt", row.name=FALSE)
