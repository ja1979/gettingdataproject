# Code Book for gettingdataproject

This file explains how data is collected and organized.

Overview
--------
* Script file run_analysis.R is used to collect and tidy data
* There are two source fo data:
  - Training (7352 observations)
  - Testing (2947 observations)
* Data is split in different files
  - Activities: ./train/y_train.txt and ./test/y_test.txt files
  - Subjects: ./train/subject_train.txt and ./test/subject_test.txt files
  - Features: ./train/X_train.txt and ./test/X_test.txt files
* 


Procedures
----------
* The first part of the script is used to join/merge data from the different files and from the two sources which is stored in allData
* The next part calculates means and standard deviations for all observations. Variables means and sts are used.
* Variables activity and feature are used to update allData with the corresponding labels for activities and features.
* Average values is calculated in data frame averageData where values are grouped by activity and subject.



Variables
---------
* activityTrain: Temporary data frame to store data of the activities in training
* subjectTrain: Temporary data frame to store data of the subjects in training
* featureTrain: Temporary data frame to store data of the features in training
* train: Temporary data frame to store all data related to training
* activityTest: Temporary data frame to store data of the activities in testing
* subjectTest: Temporary data frame to store data of the subjects in testing
* featureTest: Temporary data frame to store data of the features in testing
* test: Temporary data frame to store all data related to testing
* allData: Main data frame that store data from the two sources
* means: Vector to store mean values for all the features
* sts: Vector to store standard deviation values for all the features
* activity: Data frame that contains labels for all the activities
* feature: Data frame that contains labels for all the features
* averageData: Data frame to store average (mean) for all the features grouped by activity and subject

