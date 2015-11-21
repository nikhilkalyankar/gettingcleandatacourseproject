#Getting Data Course Project

Extract X train and test data using read.table function and then merge the data by row binding

Extract Y train and test data using read.table function and then merge the data by row binding

Read the features.txt file to get the features

Identify the mean and SD feature variables to be extracted from the dataset

Subset the X dataset with only mean and SD values

Add column names to the extracted variables

Read the activity_labels.txt file

Create a factorize variable Activity from the Y values

Read the subjects for train and test and row bind them

Column bind Subject, Activity and X variables

Transform the Subject Variable into a factor variable

Group the data set by Subject and Activity variables

Use the summarize_each function to find the mean of all variales

Write the tidydata.txt with only the values of the average of mean and SD variables
