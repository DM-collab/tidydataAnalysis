#Peer-graded Assignment: Getting and Cleaning Data Course Project
#call libraries 
library(readxl)
library(tidyverse)
library(data.table)


#1.-  Merges the training and the test sets to create one data set.
      

      #Setting Workspace

      setwd("C:/Users/david/Documents")

      #Check if the folder exists in wd
      file.exists("./UCI HAR Dataset")
      
      
      #Read Labels for testing and training data
      features <- read.table("./UCI HAR Dataset/features.txt", col.names = c("n","functions")) #- 'features.txt': List of all features. This Txt shows all columns names for the x_train and x_test txts
      activities_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity")) # - 'activity_labels.txt': Links the class labels with their activity name.

      
      
      
      #Read and store Training Data    
      x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = features$functions)#- 'train/X_train.txt': Training set.
      y_train <- read.table( "./UCI HAR Dataset/train/Y_train.txt", col.names = "labels") #- 'train/y_train.txt': Training labels.
      s_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "subject")#- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
      
      
      #Read and store Testing Data
      x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
      y_test <- read.table("./UCI HAR Dataset/test//Y_test.txt", col.names = "labels")
      s_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
      
      #Binding Training and Testing Data
      x_data <- rbind(x_train, x_test)
      y_data <- rbind(y_train, y_test)
      s_data <- rbind(s_train, s_test)
      
      # Binding all Testing and Training Subjects 
      Subjects <- rbind(s_train,s_test)
      TrainTestData <-cbind(Subjects,y_data,x_data)
      
      #Remove unusable txt
      rm(x_train,y_train,s_train,x_test,y_test,s_test)
      
#2.- Extracts only the measurements on the mean and standard deviation for each measurement.
      
      SignificantData <- TrainTestData %>% select(subject, labels, contains("mean"), contains("std"))
      
#3.- Uses descriptive activity names to name the activities in the data set
      
      #it replaces the numerical ID labels with its corresponding Text label from the activities labels txt
      SignificantData$labels <- activities_labels[SignificantData$labels, 2]
      
#4.- Appropriately labels the data set with descriptive variable names.
      #Replace strings in all occurrences of a matching a string pattern within a column name.
      #for that reason we use gsub to replace in all occurrences whereas sub only replaces the first ocurrence.
      
      #adjusts column name of the sensors.
      names(SignificantData)<-gsub("Acc", "Accelerometer", names(SignificantData))
      names(SignificantData)<-gsub("Gyro", "Gyroscope", names(SignificantData))
      #Adjusts column name of the magnitudes
      names(SignificantData)<-gsub("^t", "Time", names(SignificantData))
      names(SignificantData)<-gsub("^f", "Frequency", names(SignificantData))
      names(SignificantData)<-gsub("BodyBody", "Body", names(SignificantData))
      names(SignificantData)<-gsub("Mag", "Magnitude", names(SignificantData))
      names(SignificantData)<-gsub("tBody", "TimeBody", names(SignificantData))
      names(SignificantData)<-gsub("gravity", "Gravity", names(SignificantData))
      names(SignificantData)<-gsub("angle", "Angle", names(SignificantData))
     
      #adjust column name of the statistical calculations.
      names(SignificantData)<-gsub("-mean()", "Mean", names(SignificantData), ignore.case = TRUE)
      names(SignificantData)<-gsub("-std()", "STD", names(SignificantData), ignore.case = TRUE)
      names(SignificantData)<-gsub("-freq()", "Frequency", names(SignificantData), ignore.case = TRUE)
      
      
      
      
#5.- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

      MeanData <- SignificantData %>% group_by(subject, labels) %>% summarise_all(mean)
      
