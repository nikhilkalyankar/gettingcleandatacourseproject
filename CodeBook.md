dataXTrain : takes input from read.table and saves data from X_train.txt

dataXTest: takes input from read.table and saves data from X_test.txt

mergeX: contains data obtained by row binding (using 'rbind' function) dataXTrain and dataXTest

features: takes input from read.table and saves data from features.txt

colnames function adds column names from features second column to mergeX

dataYTrain : takes input from read.table and saves data from y_train.txt

dataYTest: takes input from read.table and saves data from y_test.txt

mergeY: contains data obtained by row binding (using 'rbind' function) dataYTrain and dataYTest

alabels: contains labels info obtained from activity_labels.txt

Activity: factor vector that contains mergeY data that has been labelled with alabels

subjectX: takes input from read.table and saves data from subject_train.txt

subjectY: takes input from read.table and saves data from subject_test.txt

Subject: contains data obtained by row binding (using 'rbind' function) subjectX and subjectY

data <- contains data obtained by column binding (using cbind function) Subject,Activity and mergeX variables

result <- contains data obtained by grouping and summarizing the value columns of 'data' 

write.table function writes the 'tidydata.txt'
