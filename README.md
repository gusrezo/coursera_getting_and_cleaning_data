## Getting and Cleaning Data Course Project

This repository includes the solution to the final project for the Coursera
course on "Getting and Cleaning Data" from the John Hopkins University.

The data represents data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


The repository includes a script **"run_analysis.R"**, whose goal is to create a tidy data set meeting the project requirements.
The script uses the package _**dplyr**_ -it can be installed with 

```
install.packages("dplyr")
```

The script performs the following tasks:

1) if not already available, automatically download in the working directory 
the data that is going to be processed from the URL
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2) The script  unzips the downloaded file. 

3) It reads the files for  train and test data for subjects, activities and observations (6 files) and merges it. It assigns names to the features of the observations according to the "features.txt" file
provided in the data set.
Then it merges all this data in one data frame.

4) It extracts the variables (features) of the observations related to measurements on the mean and standard deviation for each measurement.

5) It assigns descriptive names to the activities and the mean and standard deviation variables.
The variables are described in the "codebook.md" file available in this repository.

6) It saves the data to the  file **"tidyData.txt"**.

7) It creates a second data set with the average of each variable for each activity and each subject.
This data set is saved to the file **"summaryTidyData.txt"**. A copy of this file is included in the
repository.



