## run_analysis.R
## author: Rayned Wiles
## Project for Coursera-Getting and Cleaning Data
##
# Read Testing data sets
# harTextx: data.frame: 2947 obs of 561 variables
#           all variables are numeric
#           variables represent 561 feature vector
# harTexty: data.frame: 2947 obs of 1 variables
#           all variables are integer
#           variable represent activity labels
# harTextsubj: data.frame: 2947 obs of 1 variables
#           all variables are integer
#           variable represent subject labels


harTestx <- read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE,nrows=2947)
harTesty <- read.table("./UCI HAR Dataset/test/y_test.txt",header=FALSE,col.names="activity",nrows=2947)
harTestsubj <- read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE,col.names="subject",nrows=2947)


# Read Training data sets
# harTextx: data.frame: 7352 obs of 561 variables
#           all variables are numeric
#           variables represent 561 feature vector
# harTexty: data.frame: 7352 obs of 1 variables
#           all variables are integer
#           variable represent activity labels
# harTextsubj: data.frame: 7352 obs of 1 variables
#           all variables are integer
#           variable represent subject labels

harTrainx <- read.table("./UCI HAR Dataset/train/X_train.txt",header=FALSE,nrows=7352)
harTrainy <- read.table("./UCI HAR Dataset/train/y_train.txt",header=FALSE,col.names="activity",nrows=7352)
harTrainsubj <- read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE,col.names="subject",nrows=7352)


# Read activity and feature labels

harActivity <- read.table("./UCI HAR Dataset/activity_labels.txt",header=FALSE,col.names=c("activitylabel","activityname1"))
harFeatures <- read.table("./UCI HAR Dataset/features.txt",header=FALSE,col.names=c("featurelabel","featurename"))


# Clean up the activity names
activityname <- c("Walking","Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying")
harActivity <- cbind(harActivity,activityname)
harActivity$activityname1 <- NULL


# Clean up the feature names

featurenameclean <- harFeatures[,2]
featurenameclean <- gsub(",","",featurenameclean)
featurenameclean <- gsub("-","",featurenameclean)
featurenameclean <- gsub("\\(","",featurenameclean)
featurenameclean <- gsub("\\)","",featurenameclean)
featurenameclean <- tolower(featurenameclean)
harFeatures <- cbind(harFeatures,featurenameclean)


# Subset harFeatures to only mean and std variables
# create a vector of the index of mean and std variables
# note that the documenation stated that the mean and
# and std variables were mean() and std()

harFeaturesMS <- harFeatures[grep("*mean\\(|std\\(*", harFeatures[,2]),]
harFeatureVector <- harFeaturesMS[,1]
featurenamecleanMS <- harFeaturesMS[,3]

# Clean up the feature (measurement) names 
# by spelling out the abbreviations
# The spelled out names will be used for the codebook

featurenamefull <- harFeaturesMS[,2]
featurenamefull <- gsub("tBody","Time Body ", featurenamefull)
featurenamefull <- gsub("fBodyBody","Frequency Body Body ", featurenamefull)
featurenamefull <- gsub("fBody","Frequency Body ", featurenamefull)
featurenamefull <- gsub("tGravity","Time Gravity ", featurenamefull)
featurenamefull <- gsub("ACC","Acceleration ", featurenamefull)
featurenamefull <- gsub("Acc","Acceleration ", featurenamefull)
featurenamefull <- gsub("Gyro","Gyro ", featurenamefull)
featurenamefull <- gsub("Jerk","Jerk ", featurenamefull)
featurenamefull <- gsub("Mag","Magnitude ", featurenamefull)
featurenamefull <- gsub("-std","- Standard Deviation", featurenamefull)
featurenamefull <- gsub("-mean","- Mean", featurenamefull)
harFeaturesMS <- cbind(harFeaturesMS,featurenamefull)

# Write out harFeaturesMS for more desriptive measurement names
# write.csv(harFeaturesMS,"projectFeatureNames.csv")
# write.table(harFeaturesMS,"projectFeatureNames.txt",sep="\t\t",row.names=FALSE)

# Subset harTestx & harTrainx (test & training data sets)
# to only mean & std variables

harTestx <- harTestx[,harFeatureVector]
harTrainx <- harTrainx[,harFeatureVector]


# Combine the descriptive and data tables
# by adding the subject and activity tables

harTestxFull <- harTestx
names(harTestxFull) <- featurenamecleanMS
harTestxFull <- cbind(harTesty,harTestxFull)
harTestxFull <- cbind(harTestsubj,harTestxFull)
harTestxFull <- merge(harActivity,harTestxFull,by.x="activitylabel",by.y="activity",all=TRUE)

harTrainxFull <- harTrainx
names(harTrainxFull) <- featurenamecleanMS
harTrainxFull <- cbind(harTrainy,harTrainxFull)
harTrainxFull <- cbind(harTrainsubj,harTrainxFull)
harTrainxFull <- merge(harActivity,harTrainxFull,by.x="activitylabel",by.y="activity",all=TRUE)


# combine the Train and Test data frames
# a source variable was added to each table to retain source

harTestxFull$source <- "test"
harTrainxFull$source <- "train"
harCombined <- rbind(harTestxFull,harTrainxFull)


# drop activitylabel and source columns since not needed
# for this analysis

harCombinedMS <- harCombined[,c(3,2,4:69)]


# Melt the combined data set, harCombinedMS, 
# to produce a long dataset

library(reshape2)
harMelt <- melt(harCombinedMS, id=c("subject","activityname"),measure=featurenamecleanMS,variable.name="measurement")


# Create tidy data set with the average of each variable for each activity and each subject.

harAggDataLong <- aggregate(value~subject+activityname+measurement,data=harMelt,FUN=mean)
harAggDataWide <- dcast(harMelt,subject+activityname~measurement,mean, drop=FALSE)

# write the data long and wide versions of the data sets
# The commented out versions are the full data sets
# and the wide version of the tidy data set.
# write.csv(harMelt,"projectFullLong.csv")
# write.csv(harCombinedMS,"projectFullWide.csv")
# write.csv(harAggDataWide,"projectTidyWide.csv")

write.csv(harAggDataLong,"projectTidyLong.csv")
