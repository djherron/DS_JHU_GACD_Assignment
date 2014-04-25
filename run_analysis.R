# Getting and Cleaning Data
# Assignment
# R script to create tidy data set 1


# ---------
# load data
# ---------

# load training set
features_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
dim(features_train)
activity_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt",
                             col.names=c("Activity"))
dim(activity_train)
head(activity_train)
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt",
                            col.names=c("Subject"))
dim(subject_train)
head(subject_train)

# load test set
features_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
dim(features_test)
activity_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt",
                            col.names=c("Activity"))
dim(activity_test)
head(activity_test)
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt",
                           col.names=c("Subject"))
dim(subject_test)
head(subject_test)

# load activity labels
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt",
                              col.names=c("Activity_Nr", "Activity_Name"),
                              stringsAsFactors=FALSE)
activity_labels

# load feature names
feature_names <- read.table("./data/UCI HAR Dataset/features.txt",
                            stringsAsFactors=FALSE,
                            col.names=c("Feature_Nr", "Feature_Name"))
dim(feature_names)
head(feature_names)

# --------------------------------
# build vectors of activity labels
# --------------------------------

# build train activity labels
activity_label_train <- vector(mode="character", length=0)
for (i in 1:dim(activity_train)[1]) {
  activity_label_train[i] <- activity_labels$Activity_Name[activity_train[i,1]]
}
activity_label_train <- data.frame(Activity=activity_label_train)

# build test activity labels
activity_label_test <- vector(mode="character", length=0)
for (i in 1:dim(activity_test)[1]) {
  activity_label_test[i] <- activity_labels$Activity_Name[activity_test[i,1]]
}
activity_label_test <- data.frame(Activity=activity_label_test)

# ------------------------------------------------------------------
# Extract features for mean and standard deviation measurements only
# ------------------------------------------------------------------

# find the indices of the feature columns corresponding to mean measurements
mean_measure_col_index <- grep("mean()", feature_names$Feature_Name, fixed=F)
# find the indices of the feature columns corresponding to std dev'n measurements
std_measure_col_index <- grep("std()", feature_names$Feature_Name)
# verify no column index appears in both sets; sum=0 is verification
sum(std_measure_col_index %in% mean_measure_col_index)

# combine and sort the sets of column indices for the features we want
# to extract
target_col_index <- c(mean_measure_col_index, std_measure_col_index)
target_col_index <- sort(target_col_index)

# extract the target features from the train and test feature sets
target_features_train <- features_train[,target_col_index]
target_features_test <- features_test[,target_col_index]


# ----------------------------------
# prepare some content for code book
# ----------------------------------

# capture the feature names of the target features
target_feature_names <- feature_names$Feature_Name[target_col_index]

# prepare feature column IDs to match what will appear in the tidy data set
target_col_id <- paste0("V", target_col_index)

# write the mapping of feature column IDs to feature names to a file for
# eventual inclusion in the code book
write.table(cbind(target_col_id, target_feature_names),
            file="codebook_features.txt", row.names=FALSE)


# --------------------------------------
# merge data sets into 1st tidy data set
# --------------------------------------

# combine the three pieces of the training set
train_set <- cbind(subject_train, activity_label_train, target_features_train)
# combine the three pieces of the test set
test_set <- cbind(subject_test, activity_label_test, target_features_test)

# combine the training and test sets
tidy_data_1 <- rbind(train_set, test_set)

# save data set to file
write.table(tidy_data_1, file="tidy_data_1.txt", row.names=FALSE)


