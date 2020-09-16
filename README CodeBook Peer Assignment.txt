READ ME File Getting and Cleaning Data Course Project

Context for the data:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity
at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 


For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment

The final data shows:
=======================================

Code Book:
-Summary for each Mean, meanFrequency and standard deviation. 

-Detail of Accelerometer,AccelerometerJerk, AccelerometerMagnitude, AcelerometerJerkMagnitude,

-Detail of Gyroscope, GyroscopeJerk,GyroscopeMagnitude, GyroscopeJerkMagnitude. 

Jerk: Linear acceleration.

Each of the acceleration is represented in Axis, XYZ

-Activity includes 6 types: [Laying Stiting Standing Walking walking downstairs and Walking upstairs]

-For each 30 subjects. 

In total the final dataset is composed of 180 Observations and 88 variables.

 [1] "subject"                                           
 [2] "labels"                                            
 [3] "TimeBodyAccelerometer.mean...X"                    
 [4] "TimeBodyAccelerometer.mean...Y"                    
 [5] "TimeBodyAccelerometer.mean...Z"                    
 [6] "TimeGravityAccelerometer.mean...X"                 
 [7] "TimeGravityAccelerometer.mean...Y"                 
 [8] "TimeGravityAccelerometer.mean...Z"                 
 [9] "TimeBodyAccelerometerJerk.mean...X"                
[10] "TimeBodyAccelerometerJerk.mean...Y"                
[11] "TimeBodyAccelerometerJerk.mean...Z"                
[12] "TimeBodyGyroscope.mean...X"                        
[13] "TimeBodyGyroscope.mean...Y"                        
[14] "TimeBodyGyroscope.mean...Z"                        
[15] "TimeBodyGyroscopeJerk.mean...X"                    
[16] "TimeBodyGyroscopeJerk.mean...Y"                    
[17] "TimeBodyGyroscopeJerk.mean...Z"                    
[18] "TimeBodyAccelerometerMagnitude.mean.."             
[19] "TimeGravityAccelerometerMagnitude.mean.."          
[20] "TimeBodyAccelerometerJerkMagnitude.mean.."         
[21] "TimeBodyGyroscopeMagnitude.mean.."                 
[22] "TimeBodyGyroscopeJerkMagnitude.mean.."             
[23] "FrequencyBodyAccelerometer.mean...X"               
[24] "FrequencyBodyAccelerometer.mean...Y"               
[25] "FrequencyBodyAccelerometer.mean...Z"               
[26] "FrequencyBodyAccelerometer.meanFreq...X"           
[27] "FrequencyBodyAccelerometer.meanFreq...Y"           
[28] "FrequencyBodyAccelerometer.meanFreq...Z"           
[29] "FrequencyBodyAccelerometerJerk.mean...X"           
[30] "FrequencyBodyAccelerometerJerk.mean...Y"           
[31] "FrequencyBodyAccelerometerJerk.mean...Z"           
[32] "FrequencyBodyAccelerometerJerk.meanFreq...X"       
[33] "FrequencyBodyAccelerometerJerk.meanFreq...Y"       
[34] "FrequencyBodyAccelerometerJerk.meanFreq...Z"       
[35] "FrequencyBodyGyroscope.mean...X"                   
[36] "FrequencyBodyGyroscope.mean...Y"                   
[37] "FrequencyBodyGyroscope.mean...Z"                   
[38] "FrequencyBodyGyroscope.meanFreq...X"               
[39] "FrequencyBodyGyroscope.meanFreq...Y"               
[40] "FrequencyBodyGyroscope.meanFreq...Z"               
[41] "FrequencyBodyAccelerometerMagnitude.mean.."        
[42] "FrequencyBodyAccelerometerMagnitude.meanFreq.."    
[43] "FrequencyBodyAccelerometerJerkMagnitude.mean.."    
[44] "FrequencyBodyAccelerometerJerkMagnitude.meanFreq.."
[45] "FrequencyBodyGyroscopeMagnitude.mean.."            
[46] "FrequencyBodyGyroscopeMagnitude.meanFreq.."        
[47] "FrequencyBodyGyroscopeJerkMagnitude.mean.."        
[48] "FrequencyBodyGyroscopeJerkMagnitude.meanFreq.."    
[49] "Angle.TimeBodyAccelerometerMean.Gravity."          
[50] "Angle.TimeBodyAccelerometerJerkMean..GravityMean." 
[51] "Angle.TimeBodyGyroscopeMean.GravityMean."          
[52] "Angle.TimeBodyGyroscopeJerkMean.GravityMean."      
[53] "Angle.X.GravityMean."                              
[54] "Angle.Y.GravityMean."                              
[55] "Angle.Z.GravityMean."                              
[56] "TimeBodyAccelerometer.std...X"                     
[57] "TimeBodyAccelerometer.std...Y"                     
[58] "TimeBodyAccelerometer.std...Z"                     
[59] "TimeGravityAccelerometer.std...X"                  
[60] "TimeGravityAccelerometer.std...Y"                  
[61] "TimeGravityAccelerometer.std...Z"                  
[62] "TimeBodyAccelerometerJerk.std...X"                 
[63] "TimeBodyAccelerometerJerk.std...Y"                 
[64] "TimeBodyAccelerometerJerk.std...Z"                 
[65] "TimeBodyGyroscope.std...X"                         
[66] "TimeBodyGyroscope.std...Y"                         
[67] "TimeBodyGyroscope.std...Z"                         
[68] "TimeBodyGyroscopeJerk.std...X"                     
[69] "TimeBodyGyroscopeJerk.std...Y"                     
[70] "TimeBodyGyroscopeJerk.std...Z"                     
[71] "TimeBodyAccelerometerMagnitude.std.."              
[72] "TimeGravityAccelerometerMagnitude.std.."           
[73] "TimeBodyAccelerometerJerkMagnitude.std.."          
[74] "TimeBodyGyroscopeMagnitude.std.."                  
[75] "TimeBodyGyroscopeJerkMagnitude.std.."              
[76] "FrequencyBodyAccelerometer.std...X"                
[77] "FrequencyBodyAccelerometer.std...Y"                
[78] "FrequencyBodyAccelerometer.std...Z"                
[79] "FrequencyBodyAccelerometerJerk.std...X"            
[80] "FrequencyBodyAccelerometerJerk.std...Y"            
[81] "FrequencyBodyAccelerometerJerk.std...Z"            
[82] "FrequencyBodyGyroscope.std...X"                    
[83] "FrequencyBodyGyroscope.std...Y"                    
[84] "FrequencyBodyGyroscope.std...Z"                    
[85] "FrequencyBodyAccelerometerMagnitude.std.."         
[86] "FrequencyBodyAccelerometerJerkMagnitude.std.."     
[87] "FrequencyBodyGyroscopeMagnitude.std.."             
[88] "FrequencyBodyGyroscopeJerkMagnitude.std.."  
