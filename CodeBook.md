CodeBook for tidy_data_1.txt
=============

This file describes the *tidy_data_1.txt* data set.


### Overview

*tidy_data_1.txt* is a subset of the Human Activity Recognition Using Smartphones (HARUS) data set which is available for download [here] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

As well as being a subset, *tidy_data_1* is also a transformation of the HARUS data set. It represents a combining of the separate HARUS subject, activity and feature files, a replacing of numeric activity IDs with meaningful activity labels, a merging of the separate training and test sets, and an extraction of only those features pertaining to mean and standard deviation measurements. 


### The Variables

*Subject*
An integer identifier for the subject (person) who participated in the Human Activity Recognition Using Smartphones study and with whom all the measurements in that row are associated.  A total of 30 subjects participated.

*Activity*
A categorical variable.  Each subject performed 6 activities.  This variable identifies which of the 6 activities the feature measurements of each observation (row) pertain to.  The activity is the 'label' for the observation and allows data analysts to measure the accuracy of their predictive models.

*The Feature Column*
All other columns in the data set are features.  All features pertain to either a mean or standard deviation measurement.  The list below maps the feature column ids appearing in the data set to their corresponding feature names.  Please refer to the original Samsung smartphone activity data codebook file named *features_info.txt* for how to interpret the meaning of each feature name. 

"V1" "tBodyAcc-mean()-X"
"V2" "tBodyAcc-mean()-Y"
"V3" "tBodyAcc-mean()-Z"
"V4" "tBodyAcc-std()-X"
"V5" "tBodyAcc-std()-Y"
"V6" "tBodyAcc-std()-Z"
"V41" "tGravityAcc-mean()-X"
"V42" "tGravityAcc-mean()-Y"
"V43" "tGravityAcc-mean()-Z"
"V44" "tGravityAcc-std()-X"
"V45" "tGravityAcc-std()-Y"
"V46" "tGravityAcc-std()-Z"
"V81" "tBodyAccJerk-mean()-X"
"V82" "tBodyAccJerk-mean()-Y"
"V83" "tBodyAccJerk-mean()-Z"
"V84" "tBodyAccJerk-std()-X"
"V85" "tBodyAccJerk-std()-Y"
"V86" "tBodyAccJerk-std()-Z"
"V121" "tBodyGyro-mean()-X"
"V122" "tBodyGyro-mean()-Y"
"V123" "tBodyGyro-mean()-Z"
"V124" "tBodyGyro-std()-X"
"V125" "tBodyGyro-std()-Y"
"V126" "tBodyGyro-std()-Z"
"V161" "tBodyGyroJerk-mean()-X"
"V162" "tBodyGyroJerk-mean()-Y"
"V163" "tBodyGyroJerk-mean()-Z"
"V164" "tBodyGyroJerk-std()-X"
"V165" "tBodyGyroJerk-std()-Y"
"V166" "tBodyGyroJerk-std()-Z"
"V201" "tBodyAccMag-mean()"
"V202" "tBodyAccMag-std()"
"V214" "tGravityAccMag-mean()"
"V215" "tGravityAccMag-std()"
"V227" "tBodyAccJerkMag-mean()"
"V228" "tBodyAccJerkMag-std()"
"V240" "tBodyGyroMag-mean()"
"V241" "tBodyGyroMag-std()"
"V253" "tBodyGyroJerkMag-mean()"
"V254" "tBodyGyroJerkMag-std()"
"V266" "fBodyAcc-mean()-X"
"V267" "fBodyAcc-mean()-Y"
"V268" "fBodyAcc-mean()-Z"
"V269" "fBodyAcc-std()-X"
"V270" "fBodyAcc-std()-Y"
"V271" "fBodyAcc-std()-Z"
"V294" "fBodyAcc-meanFreq()-X"
"V295" "fBodyAcc-meanFreq()-Y"
"V296" "fBodyAcc-meanFreq()-Z"
"V345" "fBodyAccJerk-mean()-X"
"V346" "fBodyAccJerk-mean()-Y"
"V347" "fBodyAccJerk-mean()-Z"
"V348" "fBodyAccJerk-std()-X"
"V349" "fBodyAccJerk-std()-Y"
"V350" "fBodyAccJerk-std()-Z"
"V373" "fBodyAccJerk-meanFreq()-X"
"V374" "fBodyAccJerk-meanFreq()-Y"
"V375" "fBodyAccJerk-meanFreq()-Z"
"V424" "fBodyGyro-mean()-X"
"V425" "fBodyGyro-mean()-Y"
"V426" "fBodyGyro-mean()-Z"
"V427" "fBodyGyro-std()-X"
"V428" "fBodyGyro-std()-Y"
"V429" "fBodyGyro-std()-Z"
"V452" "fBodyGyro-meanFreq()-X"
"V453" "fBodyGyro-meanFreq()-Y"
"V454" "fBodyGyro-meanFreq()-Z"
"V503" "fBodyAccMag-mean()"
"V504" "fBodyAccMag-std()"
"V513" "fBodyAccMag-meanFreq()"
"V516" "fBodyBodyAccJerkMag-mean()"
"V517" "fBodyBodyAccJerkMag-std()"
"V526" "fBodyBodyAccJerkMag-meanFreq()"
"V529" "fBodyBodyGyroMag-mean()"
"V530" "fBodyBodyGyroMag-std()"
"V539" "fBodyBodyGyroMag-meanFreq()"
"V542" "fBodyBodyGyroJerkMag-mean()"
"V543" "fBodyBodyGyroJerkMag-std()"
"V552" "fBodyBodyGyroJerkMag-meanFreq()"
