# Read data

# Read training data

# Read training activity data (y)
activityTrain <- read.csv("./train/y_train.txt", header = F, sep = "")
colnames(activityTrain)[1] <- "activity"

# Read training subject data (s)
subjectTrain <- read.csv("./train/subject_train.txt", header = F, sep = "")
colnames(subjectTrain)[1] <- "subject"

# Read training features data (x)
featureTrain <- read.csv("./train/X_train.txt", header = F, sep = "")

# Merge training data
train <- cbind(activityTrain, subjectTrain, featureTrain)


# Read testing data

# Read testing activity data (y)
activityTest <- read.csv("./test/y_test.txt", header = F, sep = "")
colnames(activityTest)[1] <- "activity"

# Read testing subject data (s)
subjectTest <- read.csv("./test/subject_test.txt", header = F, sep = "")
colnames(subjectTest)[1] <- "subject"

# Read testing features data (x)
featureTest <- read.csv("./test/X_test.txt", header = F, sep = "")

# Merge testing data
test <- cbind(activityTest, subjectTest, featureTest)


# Merge testing and training data
allData <- rbind(train,test)



# Mean for each measurement
means <- colMeans(subset(allData, select = c(3:563)))

# Standard deviation for each measurement
sds <- sapply(subset(allData,select=c(3:563)), sd)


# Including descriptive activity names in data (Step 3)
activity <- read.csv("./activity_labels.txt", header = F, sep = "")
colnames(activity)[1] <- "activity"
colnames(activity)[2] <- "activity.name"
allData <- merge(activity, allData)


# Including descriptive labels for features (Variables) (Step 4)
feature <- read.csv("./features.txt", header = F, sep = "")
colnames(allData)[4:564] <- as.vector(feature[,2])

# Calculate average of varaibles by activity and subject (Step 5)
averageData <- ddply(allData, .(activity.name,subject), numcolwise(mean))

# Return allData
allData

