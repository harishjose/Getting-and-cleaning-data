Getting and Cleaning Data Course Project
========================================
The file for the project is obtained from the link below.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The requirements from the course are below.

 You should create one R script called run_analysis.R that does the following. 

~1.Merges the training and the test sets to create one data set.

~2.Extracts only the measurements on the mean and standard deviation for each measurement.

~3.Uses descriptive activity names to name the activities in the data set

~4.Appropriately labels the data set with descriptive variable names.

~5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## R Script run_analysis.R:
The R script called run_analysis.R is used to perform the data cleaning and analysis. This is availabe at the github repository.

The run_analysis first looks at the X, Y, Subject and Features data, and extracts the required data and merges them into one dataset called onedataset. This required updating the column names with the required descriptive variable names.

Using the reshape2() library, the run_analysis.R file creates a new dataset called tidydataset that is the independent tidy data set with the average of each variae for each variable. The script also generates this as a text file calle tidydataset.txt. This file is also available in my repository. 

## Codebook:
Finally, I have also put a codebook in the repository that shows the variables that are present in the tidydataset file.

Thank you for your time.

Harish Jose December 2014.
