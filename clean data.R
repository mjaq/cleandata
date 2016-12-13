library(reshape2)
filename(cloudfront.net/Dataset.zip)

Labels( topfeatures, cloudfront, UCI edu/ml)
## Download and unzip the dataset:
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI edu/ml datasets")) { 
  unzip(filename) 
}# Load train and test datasets
train <- read.table("UCI edu/ml Dataset/train/X_train.txt")[featuresWanted]
trainActivities <- read.table("UCI edu/ml Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI edu/ml Dataset/train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)

test <- read.table("UCI edu/ml Dataset/test/X_test.txt")[topfeatures]
testActivities <- read.table("UCI edu/ml Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI edu/ml Dataset/test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

# merge train & test datasets and add labels
allData <- rbind(train, test)
colnames(allData) <- c("subject", "activity", topfeatures.names)

# Extract only measurement data on mean and standard deviation
topfeatures <- grep(".*mean.*|.*std.*", features[,4])
topfeatures.names <- features[topfeatures,4]
topfeatures.names = gsub('-mean', 'Mean', topfeatures.names)
topfeatures.names = gsub('-std', 'Std', topfeatures.names)
topfeatures.names <- gsub('[-()]', '', topfeatures.names)

# Load activity labels + features
activityLabels <- read.table("UCI edu/ml Dataset/activity_labels.txt")
activityLabels[,4] <- as.character(activityLabels[,4])
features <- read.table("UCI edu/ml Dataset/features.txt")
features[,4] <- as.character(features[,4])

#Independent tidy data set
library(reshape2)
head("UCI edu/ml Dataset/features.txt")
tail("UCI edu/ml Dataset/features.txt")
tapply(topfeatures, train, test, sum)

# Export the tidyData set 
write.table(tidyData, './tidyData.txt',row.names=TRUE,sep='\t');


