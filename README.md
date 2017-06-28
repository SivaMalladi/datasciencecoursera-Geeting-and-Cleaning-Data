## Getting and Cleaning Data Course Project
**StudentName**: Sivaraman Malldi  
**Suuporting Docs**: codebook.md

### Overview
Thirty subjects(persons) of various age groups were tracked using wearable devices for six activities and collected various measures over a period of time and stored in different datasets.  
The techniques learnt during R Programming and Getting and Cleaning Data courses, are applied to acquire datasets, cleanse and manipulte data and prepare a tidy data set.

The source datasets and their descriptions are available at the following location:
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
### Project Summary
This project has following processing steps

1. Download the zipped source file and extract them to a R working directory
1. Merge the training and the test data of measurements(x), activities(y) and subject(subjects) to create one data set for each type.
1. Extract mean and standard deviation measurement columns from measurements dataset using features description data set. 
1. Assign appropriate descriptive column labels to measurement, activity, subject datsets
1. Create combined datset concatinating the three subject, activity, measurement datasets using cbind function  
1. Calculate averages for all the measurement variables by subject and activitywise to create tidy dataset. 
1. Save the tidy dataset to a storage device 

### Additional Information
Detailed information about the about the variables, data transformations are available in the codebook.md file.
