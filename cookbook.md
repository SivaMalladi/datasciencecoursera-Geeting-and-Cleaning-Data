## Getting and Cleaning Data Course Project Codebook
**Student Name**: Sivaraman Malladi 
### Objective  
Demonstrate various techniques used for preparing a tidy dataset

### Description
 
A full description of the datasets used for this project is available at this location  
[The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)      
The data used for this project is available at this location 
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)   


This codebook contains details of        


1. source datasets    

1. output dataset   

1. varibales used 

1. data processing steps 

### Source Datasets
- **features.txt**        : Contains feature names of various measurements
- **activity_labels.txt** : Contains descriptions for the six activities
- **subject_train.txt**   : Contains subjects ids for measurements of different activities (trained dataset) 
- **subject_test.txt**   : Contains subjects ids for measurements of different activities (test dataset) 
- **y_train.txt**        : Contains activity ids for measurements of different subjects(trained dataset)
- **y_test.txt**        : Contains activity ids for measurements of different subjects(test dataset)
- **x_train.txt**        : Contains measurements for different activities of subjects(trained dataset)
- **x_test.txt**        : Contains measurements for different activities of subjects(test dataset) 
#####Assumptions:  
1. All the three _train.txt datasets have same number of rows and same sequence
2. All the three _test.txt datasets have same number of rows and same sequence
3. All the source datasets are extracted into appropriate R working directories and ready for processing


### Output Dataset
- **averages.txt** : Contains averages for different mean and standard deviation measurements for each combination of subject and activity(tidy data set)  

### R Script Name:
- **run_analysis.R** : This R script is executed for processing the input datasets to create the tidy output dataset     
### Libraries used:  
- **plyr** : ddply function used for calculating means for various measurements in a single call

### Variables used:

**x\_train** : loads x\_train.txt dataset  
**x\_test**  : loads x\_test.txt  dataset  
**x\_data**  : row combined data set of x_tran and x_test

**y\_train** : loads y\_train.txt dataset  
**y\_test**  : loads y\_test.txt  dataset  
**y\_tdata** : row combined data set of y_tran and y_test

**subject\_train** : loads subject\_train.txt dataset  
**subject\_test**  : loads subject\_test.txt  dataset.  
**subject\_test**  : row combined data set of subject\_tran and subject\_test

**activity\_label** : loads activity\_labels.txt dataset  
**feature\_label** : loads features.txt dataset

**mean\_std\_labels\_vector** : vector of indices from feature_label for subsetting x_data for mean and standard deviation measurement variables  

**all\_data** : column combined dataset of subject\_data, y_data and x_data datasets

**averages\_data** :  stores calculated averages for various mean and standard deviation measurement variable for each subject and activity combination
 
### Processing Steps 
(Note: for complete details refer to run\_analysis.R script)  
**Step 1** : Load train and test datasets and merge the training and test data sets into one data set for x\_, y\_, subject\_ datasets  
Load feautures and activity label datastes  

**Step 2** : Create a vector of indices from feature\_label datset for mean and standard deviation measurements and store it in mean\_std\_labels\_vector variable  
Subset the x\_data dataset using the above mean\_std\_lable\_vector variable  
   
**Step 3** : Assign appropriate columns names to x\_data, y\_data and subject\_data datasets   

**Step 4** : Combine subject\_data, y\_data and x\_data vertically using cbind command into one data set called all_data   
Using ddply function of plyr package, calculate the averages of various mean and standard deviation measurements and store them in averages\_data dataset   
save the averages\_data to a storage device and names averages.txt


**---End of the codebook---** 
