# Getting and Cleaning Data
# Assignment
# R script to create tidy data set 2


# check that the tidy_data_1 data set already exists
if (!exists("tidy_data_1")) {
  stop("Please create tidy_data_1 data set by running run_analysis.R first.")
}

# create a summary of tidy_data_1, giving the mean of each feature measurement
# for each Subject and Activity combination
library(plyr)
tidy_data_2 <- ddply(data_set_1, .(Subject, Activity), numcolwise(mean))

# examine portions of the resulting data frame
tidy_data_2[1:18,1:6]       # top left corner
tidy_data_2[165:180,76:81]  # bottom right corner

# save data set to file
write.table(tidy_data_2, file="tidy_data_2.txt", row.names=FALSE)


