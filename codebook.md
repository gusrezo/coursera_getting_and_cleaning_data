# Getting and Cleaning Data Course Project

## Codebook


This document describes the data and variables included in the tidy data set that has been generated
and how it's related to the original data set.

## Tidy data set variables

### subject_id
    
* Type: numeric. 
* Values:  1-30
* id  of the volunteer who participated in the experiment to whom the observation is related.
    Taken from the original data set, files "subject_train.txt" "subject_test.txt"

### activity
  
* Type: factor. 
* Values: "WALKING"" "WALKING_UPSTAIRS"" "WALKING_DOWNSTAIRS"" "SITTING"" "STANDING"" "LAYING""
* Activity that the volunteer was performing.
    Taken from the original data set, files "y_train.txt" and "y_test.txt" and mapping the numeric values to the labels included in the file activity_labels.txt
    
### features
    
* Type: numeric. 
* Values: interval (-1, 1)
* Taken from the original data set, files "X_train.txt" and "X_test.txt. Names assigned to every variable according to the labels in the file "features.txt".
    
    Below the features are listed. For every feature there's a variable "mean" and another "std"(standard deviation):

timeBodyAcc-mean-X   
timeBodyAcc-mean-Y   
timeBodyAcc-mean-Z                  
timeBodyAcc-std-X                
timeBodyAcc-std-Y                 
timeBodyAcc-std-Z                
timeGravityAcc-mean-X   
timeGravityAcc-mean-Y            
timeGravityAcc-mean-Z             
timeGravityAcc-std-X             
timeGravityAcc-std-Y             
timeGravityAcc-std-Z             
timeBodyAccJerk-mean-X            
timeBodyAccJerk-mean-Y           
timeBodyAccJerk-mean-Z            
timeBodyAccJerk-std-X            
timeBodyAccJerk-std-Y             
timeBodyAccJerk-std-Z            
timeBodyGyro-mean-X               
timeBodyGyro-mean-Y  
timeBodyGyro-mean-Z               
timeBodyGyro-std-X              
timeBodyGyro-std-Y                
timeBodyGyro-std-Z               
timeBodyGyroJerk-mean-X           
timeBodyGyroJerk-mean-Y          
timeBodyGyroJerk-mean-Z           
timeBodyGyroJerk-std-X           
timeBodyGyroJerk-std-Y            
timeBodyGyroJerk-std-Z           
timeBodyAccMag-mean              
timeBodyAccMag-std               
timeGravityAccMag-mean            
timeGravityAccMag-std            
timeBodyAccJerkMag-mean           
timeBodyAccJerkMag-std           
timeBodyGyroMag-mean              
timeBodyGyroMag-std              
timeBodyGyroJerkMag-mean          
timeBodyGyroJerkMag-std          
frequencyBodyAcc-mean-X           
frequencyBodyAcc-mean-Y          
frequencyBodyAcc-mean-Z           
frequencyBodyAcc-std-X          
frequencyBodyAcc-std-Y            
frequencyBodyAcc-std-Z           
frequencyBodyAccJerk-mean-X       
frequencyBodyAccJerk-mean-Y      
frequencyBodyAccJerk-mean-Z       
frequencyBodyAccJerk-std-X       
frequencyBodyAccJerk-std-Y        
frequencyBodyAccJerk-std-Z       
frequencyBodyGyro-mean-X          
frequencyBodyGyro-mean-Y         
frequencyBodyGyro-mean-Z          
frequencyBodyGyro-std-X          
[frequencyBodyGyro-std-Y           
frequencyBodyGyro-std-Z          
frequencyBodyAccMag-mean          
frequencyBodyAccMag-std          
frequencyBodyBodyAccJerkMag-mean  
frequencyBodyBodyAccJerkMag-std  
frequencyBodyBodyGyroMag-mean     
frequencyBodyBodyGyroMag-std     
frequencyBodyBodyGyroJerkMag-mean    
frequencyBodyBodyGyroJerkMag-std
   
   
