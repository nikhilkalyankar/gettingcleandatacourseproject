run_analysis <- function()
{
  #Extract X train and test data using read.table function and then merge the data by row binding
  dataXTrain <- read.table("train/X_train.txt")
  dataXTest <- read.table("test/X_test.txt")
  mergeX <- rbind(dataXTrain,dataXTest)
  
  #Extract Y train and test data using read.table function and then merge the data by row binding
  dataYTrain <- read.table("train/y_train.txt")
  dataYTest <- read.table("test/y_test.txt")
  mergeY <- rbind(dataYTrain,dataYTest)
  
  #Read the features.txt file to get the features
  features <- read.table("features.txt")
  #Identify the mean and SD feature variables to be extracted from the dataset
  extractMeanSD <- c(1:6,41:46,81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,266:272,345:350,424:429,503,504,516,517,529,530,542,543)
  
  #Subset the X dataset with only mean and SD values
  mergeX <- mergeX[,extractMeanSD]
  #Add column names to the extracted variables
  colnames(mergeX) <- features[extractMeanSD,2]
  
  #Read the activity_labels.txt file
  alabels <- read.table("activity_labels.txt")
  #Create a factorize variable Activity from the Y values
  Activity <- factor(mergeY[,1],labels=alabels[,2])
  
  #Read the subjects for train and test and row bind them
  subjectTrain <- read.table("train/subject_train.txt")
  subjectTest <- read.table("test/subject_test.txt")
  Subject <- rbind(subjectTrain,subjectTest)

  #Column bind Subject, Activity and X variables
  data <- cbind(Subject,Activity,mergeX)
  
  #Transform the Subject Variable into a factor variable
  data <- transform(data,Subject = factor(tempData$Subject))
  
  #Group the data set by Subject and Activity variables
  data <- group_by(data,Subject,Activity)
  
  #Use the summarize_each function to find the mean of all variales
  result <- summarize_each(tempData,funs(mean))
  
  #Write the tidydata.txt with only the values of the average of mean and SD variables
  write.table(result[,3:69],"tidydata.txt",row.name=FALSE)
}
