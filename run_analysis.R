run_analysis <- function()
{
  dataXTrain <- read.table("train/X_train.txt")
  dataXTest <- read.table("test/X_test.txt")
  mergeX <- rbind(dataXTrain,dataXTest)
  
  features <- read.table("features.txt")
  colnames(mergeX) <- features[,2]
  
  dataYTrain <- read.table("train/y_train.txt")
  dataYTest <- read.table("test/y_test.txt")
  mergeY <- rbind(dataYTrain,dataYTest)
  
  alabels <- read.table("activity_labels.txt")
  Activity <- factor(mergeY[,1],labels=alabels[,2])
  
  subjectX <- read.table("train/subject_train.txt")
  subjectY <- read.table("test/subject_test.txt")
  mergeSubject <- rbind(subjectX,subjectY)
  colnames(mergeSubject) <- c("Subject")
  
  
  data <- cbind(mergeSubject,Activity,mergeX)
  write.table(data,"tidydata.txt",row.name=FALSE)
  
}