# Getting and Cleaning Data
# Assignment
# Download the data for the assignment

# create 'data' directory if doesn't exist
if (!file.exists("data")) {
  dir.create("data")
}
list.files(".")

# download data file
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./data/Samsung_smartphone_activity_data.zip", method="curl")

list.files("./data")






