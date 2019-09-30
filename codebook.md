## Code book: Coursera Getting and Cleaning Data Course Project
## The data set that this code book pertains to is located in the tidy_data.txt file of this repository.

### README.md file of this repository has detail on actions taken.

#####The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. #####Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, #####LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and #####gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. #####The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly #####partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% #####the test data. 

#####The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then #####sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor #####acceleration signal, which has gravitational and body motion components, was separated using a Butterworth #####low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low #####frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of #####features was obtained by calculating variables from the time and frequency domain.

##### Reference: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


### tidy_data.txt data file:  
#### - Text File with space separated values
#### - Row one conatins all the variable names
#### - All proceeding rows contain the values of the variables listed in row one 


### Identifiers

#### subject
#####  - ID for the subject participating in the experiment
#####  - integer
#####  - Range: 1 to 30

#### activity
#####  - type of activity performed by the subject 
#####  - measurement taken for the respective activity type
#####  - string with 6 possible values:

######  1) WALKING: subject was walking
######  2) WALKING_UPSTAIRS: subject was walking upstairs
######  3) WALKING_DOWNSTAIRS: subject was walking downstairs
######  4) SITTING: subject was sitting
######  5) STANDING: subject was standing
######  6) LAYING: subject was laying down


### Measurements 
#### X, Y, Z indicate the directions 
#### The measurements are classified in two domains:

##### Time-domain signals
#####   - prefix of "timeDomain" 

##### Frequency-domain signals 
#####   - prefix of "frequencyDomain" 

######timeDomainBodyAccelerometerMeanX
######timeDomainBodyAccelerometerMeanY
######timeDomainBodyAccelerometerMeanZ

######timeDomainBodyAccelerometerStandardDeviationX
######timeDomainBodyAccelerometerStandardDeviationY
######timeDomainBodyAccelerometerStandardDeviationZ

######timeDomainGravityAccelerometerMeanX
######timeDomainGravityAccelerometerMeanY
######timeDomainGravityAccelerometerMeanZ

######timeDomainGravityAccelerometerStandardDeviationX
######timeDomainGravityAccelerometerStandardDeviationY
######timeDomainGravityAccelerometerStandardDeviationZ

######timeDomainBodyAccelerometerJerkMeanX
######timeDomainBodyAccelerometerJerkMeanY
######timeDomainBodyAccelerometerJerkMeanZ

######timeDomainBodyAccelerometerJerkStandardDeviationX
######timeDomainBodyAccelerometerJerkStandardDeviationY
######timeDomainBodyAccelerometerJerkStandardDeviationZ

######timeDomainBodyGyroscopeMeanX
######timeDomainBodyGyroscopeMeanY
######timeDomainBodyGyroscopeMeanZ

######timeDomainBodyGyroscopeStandardDeviationX
######timeDomainBodyGyroscopeStandardDeviationY
######timeDomainBodyGyroscopeStandardDeviationZ

######timeDomainBodyGyroscopeJerkMeanX
######timeDomainBodyGyroscopeJerkMeanY
######timeDomainBodyGyroscopeJerkMeanZ

######timeDomainBodyGyroscopeJerkStandardDeviationX
######timeDomainBodyGyroscopeJerkStandardDeviationY
######timeDomainBodyGyroscopeJerkStandardDeviationZ

######timeDomainBodyAccelerometerMagnitudeMean
######timeDomainBodyAccelerometerMagnitudeStandardDeviation

######timeDomainGravityAccelerometerMagnitudeMean
######timeDomainGravityAccelerometerMagnitudeStandardDeviation

######timeDomainBodyAccelerometerJerkMagnitudeMean
######timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation

######timeDomainBodyGyroscopeMagnitudeMean
######timeDomainBodyGyroscopeMagnitudeStandardDeviation

######timeDomainBodyGyroscopeJerkMagnitudeMean
######timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation

######frequencyDomainBodyAccelerometerMeanX
######frequencyDomainBodyAccelerometerMeanY
######frequencyDomainBodyAccelerometerMeanZ

######frequencyDomainBodyAccelerometerStandardDeviationX
######frequencyDomainBodyAccelerometerStandardDeviationY
######frequencyDomainBodyAccelerometerStandardDeviationZ

######frequencyDomainBodyAccelerometerMeanFrequencyX
######frequencyDomainBodyAccelerometerMeanFrequencyY
######frequencyDomainBodyAccelerometerMeanFrequencyZ

######frequencyDomainBodyAccelerometerJerkMeanX
######frequencyDomainBodyAccelerometerJerkMeanY
######frequencyDomainBodyAccelerometerJerkMeanZ

######frequencyDomainBodyAccelerometerJerkMeanFrequencyX
######frequencyDomainBodyAccelerometerJerkMeanFrequencyY
######frequencyDomainBodyAccelerometerJerkMeanFrequencyZ

######frequencyDomainBodyGyroscopeMeanX
######frequencyDomainBodyGyroscopeMeanY
######frequencyDomainBodyGyroscopeMeanZ

######frequencyDomainBodyGyroscopeStandardDeviationX
######frequencyDomainBodyGyroscopeStandardDeviationY
######frequencyDomainBodyGyroscopeStandardDeviationZ

######frequencyDomainBodyGyroscopeMeanFrequencyX
######frequencyDomainBodyGyroscopeMeanFrequencyY
######frequencyDomainBodyGyroscopeMeanFrequencyZ

######frequencyDomainBodyAccelerometerMagnitudeMean
######frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
######frequencyDomainBodyAccelerometerMagnitudeMeanFrequency

######frequencyDomainBodyAccelerometerJerkMagnitudeMean
######frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
######frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency

######frequencyDomainBodyGyroscopeMagnitudeMean
######frequencyDomainBodyGyroscopeMagnitudeStandardDeviation
######frequencyDomainBodyGyroscopeMagnitudeMeanFrequency

######frequencyDomainBodyGyroscopeJerkMagnitudeMean
######frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation
######frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency