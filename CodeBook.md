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
mergeSubject: contains data obtained by row binding (using 'rbind' function) subjectX and subjectY
colnames function adds column name as Subject (this operation in not required if the variable mergeSubject was instead called as Subject)

data <- contains data obtained by column binding (using cbind function) mergeSubject,Activity and mergeX variables

write.table function writes the 'tidydata.txt'
