
# runAnalysis.r File Description:
("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ")
library(reshape2)
filename(cloudfront.net/Dataset.zip )


#set working directory to the location where the UCI edu Dataset was unzipped
setwd('/Users/mjaq/Documents/UCI edu Dataset/');

Labels( topfeatures, cloudfront, UCI edu/ml)
## Download and unzip the dataset:
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI edu/ml datasets")) { 
  unzip(filename) 
}
# Load train and test datasets
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

# Load train and test datasets
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

# Create a codebook from 


# Text file from UCI HAR codedata:

Time Body Acceleration Mean X Axis  Average" "Time Body Acceleration Mean Y Axis  Average" "Time Body Acceleration Mean Z Axis  Average" "Time Body Acceleration Standard Deviation X Axis  Average" "Time Body Acceleration Standard Deviation Y Axis  Average" "Time Body Acceleration Standard Deviation Z Axis  Average" "Time Gravitational Acceleration Mean X Axis  Average" "Time Gravitational Acceleration Mean Y Axis  Average" "Time Gravitational Acceleration Mean Z Axis  Average" "Time Gravitational Acceleration Standard Deviation X Axis  Average" "Time Gravitational Acceleration Standard Deviation Y Axis  Average" "Time Gravitational Acceleration Standard Deviation Z Axis  Average" "Time Body Acceleration Jerk Mean X Axis  Average" "Time Body Acceleration Jerk Mean Y Axis  Average" "Time Body Acceleration Jerk Mean Z Axis  Average" "Time Body Acceleration Jerk Standard Deviation X Axis  Average" "Time Body Acceleration Jerk Standard Deviation Y Axis  Average" "Time Body Acceleration Jerk Standard Deviation Z Axis  Average" "Time Body Gyro Mean X Axis  Average" "Time Body Gyro Mean Y Axis  Average" "Time Body Gyro Mean Z Axis  Average" "Time Body Gyro Standard Deviation X Axis  Average" "Time Body Gyro Standard Deviation Y Axis  Average" "Time Body Gyro Standard Deviation Z Axis  Average" "Time Body Gyro Jerk Mean X Axis  Average" "Time Body Gyro Jerk Mean Y Axis  Average" "Time Body Gyro Jerk Mean Z Axis  Average" "Time Body Gyro Jerk Standard Deviation X Axis  Average" "Time Body Gyro Jerk Standard Deviation Y Axis  Average" "Time Body Gyro Jerk Standard Deviation Z Axis  Average" "Time Body Acceleration Magnitude Mean .  Average" "Time Body Acceleration Magnitude Standard Deviation..  Average" "Time Gravitational Acceleration Magnitude Mean .  Average" "Time Gravitational Acceleration Magnitude Standard Deviation..  Average" "Time Body Acceleration Jerk Magnitude Mean .  Average" "Time Body Acceleration Jerk Magnitude Standard Deviation..  Average" "Time Body Gyro Magnitude Mean .  Average" "Time Body Gyro Magnitude Standard Deviation..  Average" "Time Body Gyro Jerk Magnitude Mean .  Average" "Time Body Gyro Jerk Magnitude Standard Deviation..  Average" "Frequency Body Acceleration Mean X Axis  Average" "Frequency Body Acceleration Mean Y Axis  Average" "Frequency Body Acceleration Mean Z Axis  Average" "Frequency Body Acceleration Standard Deviation X Axis  Average" "Frequency Body Acceleration Standard Deviation Y Axis  Average" "Frequency Body Acceleration Standard Deviation Z Axis  Average" "Frequency Body Acceleration Mean Frequencyrequency X Axis  Average" "Frequency Body Acceleration Mean Frequencyrequency Y Axis  Average" "Frequency Body Acceleration Mean Frequencyrequency Z Axis  Average" "Frequency Body Acceleration Jerk Mean X Axis  Average" "Frequency Body Acceleration Jerk Mean Y Axis  Average" "Frequency Body Acceleration Jerk Mean Z Axis  Average" "Frequency Body Acceleration Jerk Standard Deviation X Axis  Average" "Frequency Body Acceleration Jerk Standard Deviation Y Axis  Average" "Frequency Body Acceleration Jerk Standard Deviation Z Axis  Average" "Frequency Body Acceleration Jerk Mean Frequencyrequency X Axis  Average" "Frequency Body Acceleration Jerk Mean Frequencyrequency Y Axis  Average" "Frequency Body Acceleration Jerk Mean Frequencyrequency Z Axis  Average" "Frequency Body Gyro Mean X Axis  Average" "Frequency Body Gyro Mean Y Axis  Average" "Frequency Body Gyro Mean Z Axis  Average" "Frequency Body Gyro Standard Deviation X Axis  Average" "Frequency Body Gyro Standard Deviation Y Axis  Average" "Frequency Body Gyro Standard Deviation Z Axis  Average" "Frequency Body Gyro Mean Frequencyrequency X Axis  Average" "Frequency Body Gyro Mean Frequencyrequency Y Axis  Average" "Frequency Body Gyro Mean Frequencyrequency Z Axis  Average" "Frequency Body Acceleration Magnitude Mean .  Average" "Frequency Body Acceleration Magnitude Standard Deviation..  Average" "Frequency Body Acceleration Magnitude Mean Frequencyrequency..  Average" "Frequency Body Body Acceleration Jerk Magnitude Mean .  Average" "Frequency Body Body Acceleration Jerk Magnitude Standard Deviation..  Average" "Frequency Body Body Acceleration Jerk Magnitude Mean Frequencyrequency..  Average" "Frequency Body Body Gyro Magnitude Mean .  Average" "Frequency Body Body Gyro Magnitude Standard Deviation..  Average" "Frequency Body Body Gyro Magnitude Mean Frequencyrequency..  Average" "Frequency Body Body Gyro Jerk Magnitude Mean .  Average" "Frequency Body Body Gyro Jerk Magnitude Standard Deviation..  Average" "Frequency Body Body Gyro Jerk Magnitude Mean Frequencyrequency..  Average" "Angular Body Acceleration Mean gravity.  Average" "Angular Body Acceleration  Jerk. Gravity Mean   Average" "Angular Body Gyro Gravity Mean   Average" "Angular Body Gyro  Jerk Gravity Mean   Average" "Angular X Axis Gravity Mean   Average" "Angular Y Axis Gravity Mean   Average" "Angular Z Axis Gravity Mean   Average"
0.274347260646063 -0.0177434918458972 -0.108925032737064 -0.607783818968688 -0.510191378479501 -0.61306429934125 0.669226222373046 0.00403879092060517 0.0921508600211059 -0.965207115039421 -0.95440802665318 -0.938900969424022 0.0789381220355816 0.0079481069090025 -0.00467469823628666 -0.63978102073413 -0.607971599340832 -0.762820240449202 -0.0309824871713436 -0.0747194855994359 0.088357304227173 -0.721192598029789 -0.682653506899942 -0.653665674372188 -0.0967092754729682 -0.0423181079782632 -0.0548303497968374 -0.731348533131935 -0.786062320321895 -0.739932395222129 -0.54822165976717 -0.591225327146546 -0.54822165976717 -0.591225327146546 -0.649417950650692 -0.627762945785391 -0.60524856977632 -0.662533062898382 -0.762137610987416 -0.77799317279698 -0.622761658493734 -0.53749328145871 -0.665033506271952 -0.603356276555826 -0.528420009576204 -0.617874813333395 -0.2214691368263 0.015400588735675 0.0473098698476722 -0.656713524546605 -0.628961179980356 -0.743608246170053 -0.654979816705833 -0.612243590244114 -0.780928428167213 -0.0477062917542325 -0.213392904926883 -0.123828014584147 -0.672094306818974 -0.70621663959074 -0.644192752866115 -0.738594816501343 -0.674226934551517 -0.690446312501126 -0.101042702224631 -0.174277577553958 -0.0513928953203266 -0.585962696268539 -0.659531216655476 0.0768760112631957 -0.620789916331592 -0.640076803144351 0.173219742700723 -0.697411069729937 -0.699976372277643 -0.0415636227771787 -0.779767633083527 -0.792190209274884 0.126707820497791 0.00770513730366637 0.00264770963963395 0.0176831301958708 -0.00921912899702262 -0.496522166185746 0.0632551738495058 -0.0542842821505305
# Load train and test datasets
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

# Create a codebook from 


# Text file from UCI HAR codedata:

Time Body Acceleration Mean X Axis  Average" "Time Body Acceleration Mean Y Axis  Average" "Time Body Acceleration Mean Z Axis  Average" "Time Body Acceleration Standard Deviation X Axis  Average" "Time Body Acceleration Standard Deviation Y Axis  Average" "Time Body Acceleration Standard Deviation Z Axis  Average" "Time Gravitational Acceleration Mean X Axis  Average" "Time Gravitational Acceleration Mean Y Axis  Average" "Time Gravitational Acceleration Mean Z Axis  Average" "Time Gravitational Acceleration Standard Deviation X Axis  Average" "Time Gravitational Acceleration Standard Deviation Y Axis  Average" "Time Gravitational Acceleration Standard Deviation Z Axis  Average" "Time Body Acceleration Jerk Mean X Axis  Average" "Time Body Acceleration Jerk Mean Y Axis  Average" "Time Body Acceleration Jerk Mean Z Axis  Average" "Time Body Acceleration Jerk Standard Deviation X Axis  Average" "Time Body Acceleration Jerk Standard Deviation Y Axis  Average" "Time Body Acceleration Jerk Standard Deviation Z Axis  Average" "Time Body Gyro Mean X Axis  Average" "Time Body Gyro Mean Y Axis  Average" "Time Body Gyro Mean Z Axis  Average" "Time Body Gyro Standard Deviation X Axis  Average" "Time Body Gyro Standard Deviation Y Axis  Average" "Time Body Gyro Standard Deviation Z Axis  Average" "Time Body Gyro Jerk Mean X Axis  Average" "Time Body Gyro Jerk Mean Y Axis  Average" "Time Body Gyro Jerk Mean Z Axis  Average" "Time Body Gyro Jerk Standard Deviation X Axis  Average" "Time Body Gyro Jerk Standard Deviation Y Axis  Average" "Time Body Gyro Jerk Standard Deviation Z Axis  Average" "Time Body Acceleration Magnitude Mean .  Average" "Time Body Acceleration Magnitude Standard Deviation..  Average" "Time Gravitational Acceleration Magnitude Mean .  Average" "Time Gravitational Acceleration Magnitude Standard Deviation..  Average" "Time Body Acceleration Jerk Magnitude Mean .  Average" "Time Body Acceleration Jerk Magnitude Standard Deviation..  Average" "Time Body Gyro Magnitude Mean .  Average" "Time Body Gyro Magnitude Standard Deviation..  Average" "Time Body Gyro Jerk Magnitude Mean .  Average" "Time Body Gyro Jerk Magnitude Standard Deviation..  Average" "Frequency Body Acceleration Mean X Axis  Average" "Frequency Body Acceleration Mean Y Axis  Average" "Frequency Body Acceleration Mean Z Axis  Average" "Frequency Body Acceleration Standard Deviation X Axis  Average" "Frequency Body Acceleration Standard Deviation Y Axis  Average" "Frequency Body Acceleration Standard Deviation Z Axis  Average" "Frequency Body Acceleration Mean Frequencyrequency X Axis  Average" "Frequency Body Acceleration Mean Frequencyrequency Y Axis  Average" "Frequency Body Acceleration Mean Frequencyrequency Z Axis  Average" "Frequency Body Acceleration Jerk Mean X Axis  Average" "Frequency Body Acceleration Jerk Mean Y Axis  Average" "Frequency Body Acceleration Jerk Mean Z Axis  Average" "Frequency Body Acceleration Jerk Standard Deviation X Axis  Average" "Frequency Body Acceleration Jerk Standard Deviation Y Axis  Average" "Frequency Body Acceleration Jerk Standard Deviation Z Axis  Average" "Frequency Body Acceleration Jerk Mean Frequencyrequency X Axis  Average" "Frequency Body Acceleration Jerk Mean Frequencyrequency Y Axis  Average" "Frequency Body Acceleration Jerk Mean Frequencyrequency Z Axis  Average" "Frequency Body Gyro Mean X Axis  Average" "Frequency Body Gyro Mean Y Axis  Average" "Frequency Body Gyro Mean Z Axis  Average" "Frequency Body Gyro Standard Deviation X Axis  Average" "Frequency Body Gyro Standard Deviation Y Axis  Average" "Frequency Body Gyro Standard Deviation Z Axis  Average" "Frequency Body Gyro Mean Frequencyrequency X Axis  Average" "Frequency Body Gyro Mean Frequencyrequency Y Axis  Average" "Frequency Body Gyro Mean Frequencyrequency Z Axis  Average" "Frequency Body Acceleration Magnitude Mean .  Average" "Frequency Body Acceleration Magnitude Standard Deviation..  Average" "Frequency Body Acceleration Magnitude Mean Frequencyrequency..  Average" "Frequency Body Body Acceleration Jerk Magnitude Mean .  Average" "Frequency Body Body Acceleration Jerk Magnitude Standard Deviation..  Average" "Frequency Body Body Acceleration Jerk Magnitude Mean Frequencyrequency..  Average" "Frequency Body Body Gyro Magnitude Mean .  Average" "Frequency Body Body Gyro Magnitude Standard Deviation..  Average" "Frequency Body Body Gyro Magnitude Mean Frequencyrequency..  Average" "Frequency Body Body Gyro Jerk Magnitude Mean .  Average" "Frequency Body Body Gyro Jerk Magnitude Standard Deviation..  Average" "Frequency Body Body Gyro Jerk Magnitude Mean Frequencyrequency..  Average" "Angular Body Acceleration Mean gravity.  Average" "Angular Body Acceleration  Jerk. Gravity Mean   Average" "Angular Body Gyro Gravity Mean   Average" "Angular Body Gyro  Jerk Gravity Mean   Average" "Angular X Axis Gravity Mean   Average" "Angular Y Axis Gravity Mean   Average" "Angular Z Axis Gravity Mean   Average"
0.274347260646063 -0.0177434918458972 -0.108925032737064 -0.607783818968688 -0.510191378479501 -0.61306429934125 0.669226222373046 0.00403879092060517 0.0921508600211059 -0.965207115039421 -0.95440802665318 -0.938900969424022 0.0789381220355816 0.0079481069090025 -0.00467469823628666 -0.63978102073413 -0.607971599340832 -0.762820240449202 -0.0309824871713436 -0.0747194855994359 0.088357304227173 -0.721192598029789 -0.682653506899942 -0.653665674372188 -0.0967092754729682 -0.0423181079782632 -0.0548303497968374 -0.731348533131935 -0.786062320321895 -0.739932395222129 -0.54822165976717 -0.591225327146546 -0.54822165976717 -0.591225327146546 -0.649417950650692 -0.627762945785391 -0.60524856977632 -0.662533062898382 -0.762137610987416 -0.77799317279698 -0.622761658493734 -0.53749328145871 -0.665033506271952 -0.603356276555826 -0.528420009576204 -0.617874813333395 -0.2214691368263 0.015400588735675 0.0473098698476722 -0.656713524546605 -0.628961179980356 -0.743608246170053 -0.654979816705833 -0.612243590244114 -0.780928428167213 -0.0477062917542325 -0.213392904926883 -0.123828014584147 -0.672094306818974 -0.70621663959074 -0.644192752866115 -0.738594816501343 -0.674226934551517 -0.690446312501126 -0.101042702224631 -0.174277577553958 -0.0513928953203266 -0.585962696268539 -0.659531216655476 0.0768760112631957 -0.620789916331592 -0.640076803144351 0.173219742700723 -0.697411069729937 -0.699976372277643 -0.0415636227771787 -0.779767633083527 -0.792190209274884 0.126707820497791 0.00770513730366637 0.00264770963963395 0.0176831301958708 -0.00921912899702262 -0.496522166185746 0.0632551738495058 -0.0542842821505305


