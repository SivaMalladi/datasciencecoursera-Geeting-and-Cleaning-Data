#run_analysis.R
library(plyr)

#Step 1 : Load the source datasets and combine them. 
x_train <- read.table("train/x_train.txt")
x_test <- read.table("test/x_test.txt")
x_data <- rbind(x_train,x_test)

y_train <- read.table("train/y_train.txt")
y_test <- read.table("test/y_test.txt")
y_data <- rbind(y_train,y_test)

subject_test <- read.table("test/subject_test.txt")
subject_train <- read.table("train/subject_train.txt")
subject_data <-rbind(subject_train,subject_test)

# Load features and activity labels datasets
feature_label<-read.table("features.txt")
activity_label<-read.table("activity_labels.txt")

#Step 2: Create a vecotr of indicess for mean and standard deviation measurements and subset x_data dataset
feature_label[,2] <-as.character(feature_label[,2])
mean_std_labels_vector<-grep("-(mean|std)\\(\\)",feature_label[,2])
x_data <-x_data[,mean_std_labels_vector]

#Step 3: Assign appropriate columns names to the datasets
names(x_data)<-feature_label[mean_std_labels_vector,2]
names(subject_data)<-c("subject")
names(y_data)<- c("activity")
y_data[,1]<-activity_label[y_data[,1],2]

#Step 4: Cobine the three data sets and calculate averages for various measurements for each subject and activity combination
# Save the averages data to a file on local storage devce and name it averages.txt
all_data <- cbind(subject_data,y_data,x_data)
averages_data <-ddply(all_data,.(subject,activity), function(x) colMeans(x[,3:68]))
write.table(averages_data,"averages.txt", row.names = FALSE)

#  --- End of the script ---

