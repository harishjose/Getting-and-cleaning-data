#set working directory
setwd("C:/Users/Harish/Desktop/Coursera/Getting and cleaning data/getdata_projectfiles_UCI HAR Dataset/Project")

#load library
library(reshape2)

#X
X_train <- read.table("train/X_train.txt")
X_test <- read.table("test/X_test.txt")
features <- read.table("features.txt")
#Y
y_train <- read.table("train/y_train.txt")
y_test <- read.table("test/y_test.txt")
#actvity
activity_labels <- read.table("activity_labels.txt")
#subject
subject_train <- read.table("train/subject_train.txt")
subject_test <- read.table("test/subject_test.txt")

x_comb <- rbind(x_train,x_test)
y_comb <- rbind(y_train,y_test)
subject_comb <- rbind(subject_train,subject_test)

#Use grepl from R base functions for extracting mean and std variables
add_features <- which(grepl("mean\\(\\)|std\\(\\)",features[,2]))

x_comb <- x_comb[,add_features]
y_comb <- activity_labels[y[,1],2]


colnames(x_comb) <- features[add_features,2]
onedataset <- cbind(subject,y,x)
colnames(onedataset)[1:2] <- c("subject","activity")


onedata_melt <- melt(onedataset, id = c("subject", "activity"))
tidydataset <- dcast(onedata_melt, subject+activity~variable,mean)
write.table(tidydataset,"tidydataset.txt",row.names=FALSE)