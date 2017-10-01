Code Book for Getting and Cleaning Data Project
================================================

<b>Study design and data processing</b>

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record it is provided:

Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
Triaxial Angular velocity from the gyroscope.
A 561-feature vector with time and frequency domain variables.
Its activity label.
An identifier of the subject who carried out the experiment.

<b>Creating the tidy datafile </b>

1. Load the necessary libraries (data.table and dplyr)
2. Load the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzip it
3. Read the activity labels, features, training, and test set data. Please find the details of the variables in <a href = "https://github.com/IremCelen/Getting_and_Cleaning_Data/blob/master/README.md"> README.md </a>
4. Check the dimensions of the training and test sets and compare them with each other
5. Assign the features as column names to the training and testing sets
6. Add the activity labels
7. Combine the training and test sets to create new dataset
8. Extract only the measurements on the mean and standard deviation for each measurement
9. Use descriptive activity names to name the activities in the data set. For that, add the activity labels to the dataset
10. Appropriately label the data set with descriptive variable names
Lowercase letters were used for all the variable names:
<li>
  std: standarddeviation</li><li>
  meanFreq: meanfrequency</li><li>
  Acc: accelerometer</li><li>
  Gyro: gyroscope</li><li>
  t: time</li><li>
  f: frequency</li><li>
  BodyBody: body</li><li>
  Mag: magnitude</li><li>
  Body: body</li><li>
  Gravity: gravity</li>

 11. From the data set in step 10, create a second, independent tidy data set with the average of each variable for each activity and each subject

<b>Description of the clean datasets</b>

The first dataset consists of 82 variables and 10,299 records assigned to them while the second dataset created by taking the average of each variable for each activity and each subject has 40 records assigned to the variables

<b>Information of the variables</b>

  activityid   
 Min.   :1.000  
 1st Qu.:2.000  
 Median :4.000  
 Mean   :3.625  
 3rd Qu.:5.000  
 Max.   :6.000  
 time_body_accelerometer_mean_X
 Min.   :-1.0000               
 1st Qu.: 0.2626               
 Median : 0.2772               
 Mean   : 0.2743               
 3rd Qu.: 0.2884               
 Max.   : 1.0000               
 time_body_accelerometer_mean_Y
 Min.   :-1.00000              
 1st Qu.:-0.02490              
 Median :-0.01716              
 Mean   :-0.01774              
 3rd Qu.:-0.01062              
 Max.   : 1.00000              
 time_body_accelerometer_mean_Z
 Min.   :-1.00000              
 1st Qu.:-0.12102              
 Median :-0.10860              
 Mean   :-0.10892              
 3rd Qu.:-0.09759              
 Max.   : 1.00000              
 time_body_accelerometer_standarddeviation_X
 Min.   :-1.0000                            
 1st Qu.:-0.9924                            
 Median :-0.9430                            
 Mean   :-0.6078                            
 3rd Qu.:-0.2503                            
 Max.   : 1.0000                            
 time_body_accelerometer_standarddeviation_Y
 Min.   :-1.00000                           
 1st Qu.:-0.97699                           
 Median :-0.83503                           
 Mean   :-0.51019                           
 3rd Qu.:-0.05734                           
 Max.   : 1.00000                           
 time_body_accelerometer_standarddeviation_Z
 Min.   :-1.0000                            
 1st Qu.:-0.9791                            
 Median :-0.8508                            
 Mean   :-0.6131                            
 3rd Qu.:-0.2787                            
 Max.   : 1.0000                            
 time__gravity_accelerometer_mean_X
 Min.   :-1.0000                   
 1st Qu.: 0.8117                   
 Median : 0.9218                   
 Mean   : 0.6692                   
 3rd Qu.: 0.9547                   
 Max.   : 1.0000                   
 time__gravity_accelerometer_mean_Y
 Min.   :-1.000000                 
 1st Qu.:-0.242943                 
 Median :-0.143551                 
 Mean   : 0.004039                 
 3rd Qu.: 0.118905                 
 Max.   : 1.000000                 
 time__gravity_accelerometer_mean_Z
 Min.   :-1.00000                  
 1st Qu.:-0.11671                  
 Median : 0.03680                  
 Mean   : 0.09215                  
 3rd Qu.: 0.21621                  
 Max.   : 1.00000                  
 time__gravity_accelerometer_standarddeviation_X
 Min.   :-1.0000                                
 1st Qu.:-0.9949                                
 Median :-0.9819                                
 Mean   :-0.9652                                
 3rd Qu.:-0.9615                                
 Max.   : 1.0000                                
 time__gravity_accelerometer_standarddeviation_Y
 Min.   :-1.0000                                
 1st Qu.:-0.9913                                
 Median :-0.9759                                
 Mean   :-0.9544                                
 3rd Qu.:-0.9464                                
 Max.   : 1.0000                                
 time__gravity_accelerometer_standarddeviation_Z
 Min.   :-1.0000                                
 1st Qu.:-0.9866                                
 Median :-0.9665                                
 Mean   :-0.9389                                
 3rd Qu.:-0.9296                                
 Max.   : 1.0000                                
 time_body_accelerometerJerk_mean_X
 Min.   :-1.00000                  
 1st Qu.: 0.06298                  
 Median : 0.07597                  
 Mean   : 0.07894                  
 3rd Qu.: 0.09131                  
 Max.   : 1.00000                  
 time_body_accelerometerJerk_mean_Y
 Min.   :-1.000000                 
 1st Qu.:-0.018555                 
 Median : 0.010753                 
 Mean   : 0.007948                 
 3rd Qu.: 0.033538                 
 Max.   : 1.000000                 
 time_body_accelerometerJerk_mean_Z
 Min.   :-1.000000                 
 1st Qu.:-0.031552                 
 Median :-0.001159                 
 Mean   :-0.004675                 
 3rd Qu.: 0.024578                 
 Max.   : 1.000000                 
 time_body_accelerometerJerk_standarddeviation_X
 Min.   :-1.0000                                
 1st Qu.:-0.9913                                
 Median :-0.9513                                
 Mean   :-0.6398                                
 3rd Qu.:-0.2912                                
 Max.   : 1.0000                                
 time_body_accelerometerJerk_standarddeviation_Y
 Min.   :-1.0000                                
 1st Qu.:-0.9850                                
 Median :-0.9250                                
 Mean   :-0.6080                                
 3rd Qu.:-0.2218                                
 Max.   : 1.0000                                
 time_body_accelerometerJerk_standarddeviation_Z
 Min.   :-1.0000                                
 1st Qu.:-0.9892                                
 Median :-0.9543                                
 Mean   :-0.7628                                
 3rd Qu.:-0.5485                                
 Max.   : 1.0000                                
 time_body_gyroscope_mean_X
 Min.   :-1.00000          
 1st Qu.:-0.04579          
 Median :-0.02776          
 Mean   :-0.03098          
 3rd Qu.:-0.01058          
 Max.   : 1.00000          
 time_body_gyroscope_mean_Y
 Min.   :-1.00000          
 1st Qu.:-0.10399          
 Median :-0.07477          
 Mean   :-0.07472          
 3rd Qu.:-0.05110          
 Max.   : 1.00000          
 time_body_gyroscope_mean_Z
 Min.   :-1.00000          
 1st Qu.: 0.06485          
 Median : 0.08626          
 Mean   : 0.08836          
 3rd Qu.: 0.11044          
 Max.   : 1.00000          
 time_body_gyroscope_standarddeviation_X
 Min.   :-1.0000                        
 1st Qu.:-0.9872                        
 Median :-0.9016                        
 Mean   :-0.7212                        
 3rd Qu.:-0.4822                        
 Max.   : 1.0000                        
 time_body_gyroscope_standarddeviation_Y
 Min.   :-1.0000                        
 1st Qu.:-0.9819                        
 Median :-0.9106                        
 Mean   :-0.6827                        
 3rd Qu.:-0.4461                        
 Max.   : 1.0000                        
 time_body_gyroscope_standarddeviation_Z
 Min.   :-1.0000                        
 1st Qu.:-0.9850                        
 Median :-0.8819                        
 Mean   :-0.6537                        
 3rd Qu.:-0.3379                        
 Max.   : 1.0000                        
 time_body_gyroscopeJerk_mean_X
 Min.   :-1.00000              
 1st Qu.:-0.11723              
 Median :-0.09824              
 Mean   :-0.09671              
 3rd Qu.:-0.07930              
 Max.   : 1.00000              
 time_body_gyroscopeJerk_mean_Y
 Min.   :-1.00000              
 1st Qu.:-0.05868              
 Median :-0.04056              
 Mean   :-0.04232              
 3rd Qu.:-0.02521              
 Max.   : 1.00000              
 time_body_gyroscopeJerk_mean_Z
 Min.   :-1.00000              
 1st Qu.:-0.07936              
 Median :-0.05455              
 Mean   :-0.05483              
 3rd Qu.:-0.03168              
 Max.   : 1.00000              
 time_body_gyroscopeJerk_standarddeviation_X
 Min.   :-1.0000                            
 1st Qu.:-0.9907                            
 Median :-0.9348                            
 Mean   :-0.7313                            
 3rd Qu.:-0.4865                            
 Max.   : 1.0000                            
 time_body_gyroscopeJerk_standarddeviation_Y
 Min.   :-1.0000                            
 1st Qu.:-0.9922                            
 Median :-0.9548                            
 Mean   :-0.7861                            
 3rd Qu.:-0.6268                            
 Max.   : 1.0000                            
 time_body_gyroscopeJerk_standarddeviation_Z
 Min.   :-1.0000                            
 1st Qu.:-0.9926                            
 Median :-0.9503                            
 Mean   :-0.7399                            
 3rd Qu.:-0.5097                            
 Max.   : 1.0000                            
 time_body_accelerometer_magnitude_mean
 Min.   :-1.0000                       
 1st Qu.:-0.9819                       
 Median :-0.8746                       
 Mean   :-0.5482                       
 3rd Qu.:-0.1201                       
 Max.   : 1.0000                       
 time_body_accelerometer_magnitude_standarddeviation
 Min.   :-1.0000                                    
 1st Qu.:-0.9822                                    
 Median :-0.8437                                    
 Mean   :-0.5912                                    
 3rd Qu.:-0.2423                                    
 Max.   : 1.0000                                    
 time__gravity_accelerometer_magnitude_mean
 Min.   :-1.0000                           
 1st Qu.:-0.9819                           
 Median :-0.8746                           
 Mean   :-0.5482                           
 3rd Qu.:-0.1201                           
 Max.   : 1.0000                           
 time__gravity_accelerometer_magnitude_standarddeviation
 Min.   :-1.0000                                        
 1st Qu.:-0.9822                                        
 Median :-0.8437                                        
 Mean   :-0.5912                                        
 3rd Qu.:-0.2423                                        
 Max.   : 1.0000                                        
 time_body_accelerometerJerk_magnitude_mean
 Min.   :-1.0000                           
 1st Qu.:-0.9896                           
 Median :-0.9481                           
 Mean   :-0.6494                           
 3rd Qu.:-0.2956                           
 Max.   : 1.0000                           
 time_body_accelerometerJerk_magnitude_standarddeviation
 Min.   :-1.0000                                        
 1st Qu.:-0.9907                                        
 Median :-0.9288                                        
 Mean   :-0.6278                                        
 3rd Qu.:-0.2733                                        
 Max.   : 1.0000                                        
 time_body_gyroscope_magnitude_mean
 Min.   :-1.0000                   
 1st Qu.:-0.9781                   
 Median :-0.8223                   
 Mean   :-0.6052                   
 3rd Qu.:-0.2454                   
 Max.   : 1.0000                   
 time_body_gyroscope_magnitude_standarddeviation
 Min.   :-1.0000                                
 1st Qu.:-0.9775                                
 Median :-0.8259                                
 Mean   :-0.6625                                
 3rd Qu.:-0.3940                                
 Max.   : 1.0000                                
 time_body_gyroscopeJerk_magnitude_mean
 Min.   :-1.0000                       
 1st Qu.:-0.9923                       
 Median :-0.9559                       
 Mean   :-0.7621                       
 3rd Qu.:-0.5499                       
 Max.   : 1.0000                       
 time_body_gyroscopeJerk_magnitude_standarddeviation
 Min.   :-1.0000                                    
 1st Qu.:-0.9922                                    
 Median :-0.9403                                    
 Mean   :-0.7780                                    
 3rd Qu.:-0.6093                                    
 Max.   : 1.0000                                    
 frequency_body_accelerometer_mean_X
 Min.   :-1.0000                    
 1st Qu.:-0.9913                    
 Median :-0.9456                    
 Mean   :-0.6228                    
 3rd Qu.:-0.2646                    
 Max.   : 1.0000                    
 frequency_body_accelerometer_mean_Y
 Min.   :-1.0000                    
 1st Qu.:-0.9792                    
 Median :-0.8643                    
 Mean   :-0.5375                    
 3rd Qu.:-0.1032                    
 Max.   : 1.0000                    
 frequency_body_accelerometer_mean_Z
 Min.   :-1.0000                    
 1st Qu.:-0.9832                    
 Median :-0.8954                    
 Mean   :-0.6650                    
 3rd Qu.:-0.3662                    
 Max.   : 1.0000                    
 frequency_body_accelerometer_standarddeviation_X
 Min.   :-1.0000                                 
 1st Qu.:-0.9929                                 
 Median :-0.9416                                 
 Mean   :-0.6034                                 
 3rd Qu.:-0.2493                                 
 Max.   : 1.0000                                 
 frequency_body_accelerometer_standarddeviation_Y
 Min.   :-1.00000                                
 1st Qu.:-0.97689                                
 Median :-0.83261                                
 Mean   :-0.52842                                
 3rd Qu.:-0.09216                                
 Max.   : 1.00000                                
 frequency_body_accelerometer_standarddeviation_Z
 Min.   :-1.0000                                 
 1st Qu.:-0.9780                                 
 Median :-0.8398                                 
 Mean   :-0.6179                                 
 3rd Qu.:-0.3023                                 
 Max.   : 1.0000                                 
 frequency_body_accelerometer_meanfrequeny_X
 Min.   :-1.00000                           
 1st Qu.:-0.41878                           
 Median :-0.23825                           
 Mean   :-0.22147                           
 3rd Qu.:-0.02043                           
 Max.   : 1.00000                           
 frequency_body_accelerometer_meanfrequeny_Y
 Min.   :-1.000000                          
 1st Qu.:-0.144772                          
 Median : 0.004666                          
 Mean   : 0.015401                          
 3rd Qu.: 0.176603                          
 Max.   : 1.000000                          
 frequency_body_accelerometer_meanfrequeny_Z
 Min.   :-1.00000                           
 1st Qu.:-0.13845                           
 Median : 0.06084                           
 Mean   : 0.04731                           
 3rd Qu.: 0.24922                           
 Max.   : 1.00000                           
 frequency_body_accelerometerJerk_mean_X
 Min.   :-1.0000                        
 1st Qu.:-0.9912                        
 Median :-0.9516                        
 Mean   :-0.6567                        
 3rd Qu.:-0.3270                        
 Max.   : 1.0000                        
 frequency_body_accelerometerJerk_mean_Y
 Min.   :-1.0000                        
 1st Qu.:-0.9848                        
 Median :-0.9257                        
 Mean   :-0.6290                        
 3rd Qu.:-0.2638                        
 Max.   : 1.0000                        
 frequency_body_accelerometerJerk_mean_Z
 Min.   :-1.0000                        
 1st Qu.:-0.9873                        
 Median :-0.9475                        
 Mean   :-0.7436                        
 3rd Qu.:-0.5133                        
 Max.   : 1.0000                        
 frequency_body_accelerometerJerk_standarddeviation_X
 Min.   :-1.0000                                     
 1st Qu.:-0.9920                                     
 Median :-0.9562                                     
 Mean   :-0.6550                                     
 3rd Qu.:-0.3203                                     
 Max.   : 1.0000                                     
 frequency_body_accelerometerJerk_standarddeviation_Y
 Min.   :-1.0000                                     
 1st Qu.:-0.9865                                     
 Median :-0.9280                                     
 Mean   :-0.6122                                     
 3rd Qu.:-0.2361                                     
 Max.   : 1.0000                                     
 frequency_body_accelerometerJerk_standarddeviation_Z
 Min.   :-1.0000                                     
 1st Qu.:-0.9895                                     
 Median :-0.9590                                     
 Mean   :-0.7809                                     
 3rd Qu.:-0.5903                                     
 Max.   : 1.0000                                     
 frequency_body_accelerometerJerk_meanfrequeny_X
 Min.   :-1.00000                               
 1st Qu.:-0.29770                               
 Median :-0.04544                               
 Mean   :-0.04771                               
 3rd Qu.: 0.20447                               
 Max.   : 1.00000                               
 frequency_body_accelerometerJerk_meanfrequeny_Y
 Min.   :-1.000000                              
 1st Qu.:-0.427951                              
 Median :-0.236530                              
 Mean   :-0.213393                              
 3rd Qu.: 0.008651                              
 Max.   : 1.000000                              
 frequency_body_accelerometerJerk_meanfrequeny_Z
 Min.   :-1.00000                               
 1st Qu.:-0.33139                               
 Median :-0.10246                               
 Mean   :-0.12383                               
 3rd Qu.: 0.09124                               
 Max.   : 1.00000                               
 frequency_body_gyroscope_mean_X
 Min.   :-1.0000                
 1st Qu.:-0.9853                
 Median :-0.8917                
 Mean   :-0.6721                
 3rd Qu.:-0.3837                
 Max.   : 1.0000                
 frequency_body_gyroscope_mean_Y
 Min.   :-1.0000                
 1st Qu.:-0.9847                
 Median :-0.9197                
 Mean   :-0.7062                
 3rd Qu.:-0.4735                
 Max.   : 1.0000                
 frequency_body_gyroscope_mean_Z
 Min.   :-1.0000                
 1st Qu.:-0.9851                
 Median :-0.8877                
 Mean   :-0.6442                
 3rd Qu.:-0.3225                
 Max.   : 1.0000                
 frequency_body_gyroscope_standarddeviation_X
 Min.   :-1.0000                             
 1st Qu.:-0.9881                             
 Median :-0.9053                             
 Mean   :-0.7386                             
 3rd Qu.:-0.5225                             
 Max.   : 1.0000                             
 frequency_body_gyroscope_standarddeviation_Y
 Min.   :-1.0000                             
 1st Qu.:-0.9808                             
 Median :-0.9061                             
 Mean   :-0.6742                             
 3rd Qu.:-0.4385                             
 Max.   : 1.0000                             
 frequency_body_gyroscope_standarddeviation_Z
 Min.   :-1.0000                             
 1st Qu.:-0.9862                             
 Median :-0.8915                             
 Mean   :-0.6904                             
 3rd Qu.:-0.4168                             
 Max.   : 1.0000                             
 frequency_body_gyroscope_meanfrequeny_X
 Min.   :-1.00000                       
 1st Qu.:-0.27189                       
 Median :-0.09868                       
 Mean   :-0.10104                       
 3rd Qu.: 0.06810                       
 Max.   : 1.00000                       
 frequency_body_gyroscope_meanfrequeny_Y
 Min.   :-1.00000                       
 1st Qu.:-0.36257                       
 Median :-0.17298                       
 Mean   :-0.17428                       
 3rd Qu.: 0.01366                       
 Max.   : 1.00000                       
 frequency_body_gyroscope_meanfrequeny_Z
 Min.   :-1.00000                       
 1st Qu.:-0.23240                       
 Median :-0.05369                       
 Mean   :-0.05139                       
 3rd Qu.: 0.12251                       
 Max.   : 1.00000                       
 frequency_body_accelerometer_magnitude_mean
 Min.   :-1.0000                            
 1st Qu.:-0.9847                            
 Median :-0.8755                            
 Mean   :-0.5860                            
 3rd Qu.:-0.2173                            
 Max.   : 1.0000                            
 frequency_body_accelerometer_magnitude_standarddeviation
 Min.   :-1.0000                                         
 1st Qu.:-0.9829                                         
 Median :-0.8547                                         
 Mean   :-0.6595                                         
 3rd Qu.:-0.3823                                         
 Max.   : 1.0000                                         
 frequency_body_accelerometer_magnitude_meanfrequeny
 Min.   :-1.00000                                   
 1st Qu.:-0.09663                                   
 Median : 0.07026                                   
 Mean   : 0.07688                                   
 3rd Qu.: 0.24495                                   
 Max.   : 1.00000                                   
 frequency_body_accelerometerJerk_magnitude_mean
 Min.   :-1.0000                                
 1st Qu.:-0.9898                                
 Median :-0.9290                                
 Mean   :-0.6208                                
 3rd Qu.:-0.2600                                
 Max.   : 1.0000                                
 frequency_body_accelerometerJerk_magnitude_standarddeviation
 Min.   :-1.0000                                             
 1st Qu.:-0.9907                                             
 Median :-0.9255                                             
 Mean   :-0.6401                                             
 3rd Qu.:-0.3082                                             
 Max.   : 1.0000                                             
 frequency_body_accelerometerJerk_magnitude_meanfrequeny
 Min.   :-1.000000                                      
 1st Qu.:-0.002959                                      
 Median : 0.164180                                      
 Mean   : 0.173220                                      
 3rd Qu.: 0.357307                                      
 Max.   : 1.000000                                      
 frequency_body_gyroscope_magnitude_mean
 Min.   :-1.0000                        
 1st Qu.:-0.9825                        
 Median :-0.8756                        
 Mean   :-0.6974                        
 3rd Qu.:-0.4514                        
 Max.   : 1.0000                        
 frequency_body_gyroscope_magnitude_standarddeviation
 Min.   :-1.0000                                     
 1st Qu.:-0.9781                                     
 Median :-0.8275                                     
 Mean   :-0.7000                                     
 3rd Qu.:-0.4713                                     
 Max.   : 1.0000                                     
 frequency_body_gyroscope_magnitude_meanfrequeny
 Min.   :-1.00000                               
 1st Qu.:-0.23436                               
 Median :-0.05210                               
 Mean   :-0.04156                               
 3rd Qu.: 0.15158                               
 Max.   : 1.00000                               
 frequency_body_gyroscopeJerk_magnitude_mean
 Min.   :-1.0000                            
 1st Qu.:-0.9921                            
 Median :-0.9453                            
 Mean   :-0.7798                            
 3rd Qu.:-0.6122                            
 Max.   : 1.0000                            
 frequency_body_gyroscopeJerk_magnitude_standarddeviation
 Min.   :-1.0000                                         
 1st Qu.:-0.9926                                         
 Median :-0.9382                                         
 Mean   :-0.7922                                         
 3rd Qu.:-0.6437                                         
 Max.   : 1.0000                                         
 frequency_body_gyroscopeJerk_magnitude_meanfrequeny
 Min.   :-1.00000                                   
 1st Qu.:-0.01948                                   
 Median : 0.13625                                   
 Mean   : 0.12671                                   
 3rd Qu.: 0.28896                                   
 Max.   : 1.00000                                   
   subjectid    
 Min.   : 1.00  
 1st Qu.: 9.00  
 Median :17.00  
 Mean   :16.15  
 3rd Qu.:24.00  
 Max.   :30.00  
 activitylabel     
 Length:10299      
 Class :character  
 Mode  :character 
