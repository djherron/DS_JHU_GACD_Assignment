Getting And Cleaning Data MOOC:  programming assignment
============

### Introduction

This repository relates to the programming assignment of the Getting and Cleaning Data MOOC that is part of the Data Science Specialization offered by Johns Hopkins University and delivered on Coursera.

### R scripts

**download_data.R**
This R script downloads the Human Activity Recognition Using Smartphones (HARUS) [data set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), which is the source data used in the programming assignment.  The R working directory that's defined when the script is run is to be shared by all R scripts.  The script creates a directory called 'data' within the working directory and stores the downloaded .zip file in that directory.  Once downloaded, unzip the .zip file within the 'data' directory.  Do not alter the unzipped directory structure or directory or file names in any way.

**run_analysis.R**
This R script runs the analysis that constitutes the bulk of the programming assignment.  This script must be run after *download_data.R* and before *run_analysis_2.R*.  It reads the HARUS data set files and combines, transforms and subsets them to produce a data set called *tidy_data_1.txt*.  See the file *CodeBook.md* for more details on the processing performed. This script also produces a file called *codebook_features.txt* which is data used to create the file *CodeBook.md*.  

**run_analysis_2.R**
This R script runs a secondary analysis, taking *tidy_data_1.txt* as input and producing a summary called *tidy_data_2.txt*.  The summary gives the mean of each feature for each combination of Subject and Activity (see *CodeBook.md*).  This script depends on and must be run after *run_analysis.R*.

### Output  data sets

**codebook_features.txt**
An ancillary output of *run_analysis.R* containing a mapping between feature column IDs and feature names.

**tidy_data_1.txt**
The primary output produced by *run_analysis.R*.  (See the file *CodeBook.md* for a description).

**tidy_data_2.txt**
The output produced by *run_analysis_2.R*

### Other files

**CodeBook.md**
A description of *tidy_data_1.txt*

