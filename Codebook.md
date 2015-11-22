# GettingAndCleaningDataProject Codebook

## Introduction

The dataset is of a "long" type.
This means that all variablenames are not presented in the form of colums, but in the form of rows.
All variable names are available in the "Variable" column.
Their values (averages of the orginal values) are available in the "MeanValue" column.

## Columns

1.  **Activity**: this column represents the type of activity and can have 6 different values:
  1.  LAYING
  2.  SITTING
  3.  STANDING
  4.  WALKING
  5.  WALKING\_DOWNSTAIRS
  6.  WALKING\_UPSTAIRS
2.  **Subject**: this column represent who of the 30 subjects was observed.
3.  **Feature**: this column contains the 79 different features that are observed. See below for more information.
4.  **MeanValue**: this is the average value connected to the activity, subject and feature combination.

## Features

The dataset contains the following features.
They are named according to the pascalCase (not CamelCase) rules without abbreviation for clarity.
Except for Std, which is commonly used for the Standard Deviation.
The meaning behind all features can be found below.

1.  frequencyDomainBodyAccelerometerJerkMagnitudeMean
2.  frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency
3.  frequencyDomainBodyAccelerometerJerkMagnitudeStd
4.  frequencyDomainBodyAccelerometerJerkMeanFrequencyX
5.  frequencyDomainBodyAccelerometerJerkMeanFrequencyY
6.  frequencyDomainBodyAccelerometerJerkMeanFrequencyZ
7.  frequencyDomainBodyAccelerometerJerkMeanX
8.  frequencyDomainBodyAccelerometerJerkMeanY
9.  frequencyDomainBodyAccelerometerJerkMeanZ
10.  frequencyDomainBodyAccelerometerJerkStdX
11.  frequencyDomainBodyAccelerometerJerkStdY
12.  frequencyDomainBodyAccelerometerJerkStdZ
13.  frequencyDomainBodyAccelerometerMagnitudeMean
14.  frequencyDomainBodyAccelerometerMagnitudeMeanFrequency
15.  frequencyDomainBodyAccelerometerMagnitudeStd
16.  frequencyDomainBodyAccelerometerMeanFrequencyX
17.  frequencyDomainBodyAccelerometerMeanFrequencyY
18.  frequencyDomainBodyAccelerometerMeanFrequencyZ
19.  frequencyDomainBodyAccelerometerMeanX
20.  frequencyDomainBodyAccelerometerMeanY
21.  frequencyDomainBodyAccelerometerMeanZ
22.  frequencyDomainBodyAccelerometerStdX
23.  frequencyDomainBodyAccelerometerStdY
24.  frequencyDomainBodyAccelerometerStdZ
25.  frequencyDomainBodyGyroscopeJerkMagnitudeMean
26.  frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency
27.  frequencyDomainBodyGyroscopeJerkMagnitudeStd
28.  frequencyDomainBodyGyroscopeMagnitudeMean
29.  frequencyDomainBodyGyroscopeMagnitudeMeanFrequency
30.  frequencyDomainBodyGyroscopeMagnitudeStd
31.  frequencyDomainBodyGyroscopeMeanFrequencyX
32.  frequencyDomainBodyGyroscopeMeanFrequencyY
33.  frequencyDomainBodyGyroscopeMeanFrequencyZ
34.  frequencyDomainBodyGyroscopeMeanX
35.  frequencyDomainBodyGyroscopeMeanY
36.  frequencyDomainBodyGyroscopeMeanZ
37.  frequencyDomainBodyGyroscopeStdX
38.  frequencyDomainBodyGyroscopeStdY
39.  frequencyDomainBodyGyroscopeStdZ
40.  timeDomainBodyAccelerometerJerkMagnitudeMean
41.  timeDomainBodyAccelerometerJerkMagnitudeStd
42.  timeDomainBodyAccelerometerJerkMeanX
43.  timeDomainBodyAccelerometerJerkMeanY
44.  timeDomainBodyAccelerometerJerkMeanZ
45.  timeDomainBodyAccelerometerJerkStdX
46.  timeDomainBodyAccelerometerJerkStdY
47.  timeDomainBodyAccelerometerJerkStdZ
48.  timeDomainBodyAccelerometerMagnitudeMean
49.  timeDomainBodyAccelerometerMagnitudeStd
50.  timeDomainBodyAccelerometerMeanX
51.  timeDomainBodyAccelerometerMeanY
52.  timeDomainBodyAccelerometerMeanZ
53.  timeDomainBodyAccelerometerStdX
54.  timeDomainBodyAccelerometerStdY
55.  timeDomainBodyAccelerometerStdZ
56.  timeDomainBodyGyroscopeJerkMagnitudeMean
57.  timeDomainBodyGyroscopeJerkMagnitudeStd
58.  timeDomainBodyGyroscopeJerkMeanX
59.  timeDomainBodyGyroscopeJerkMeanY
60.  timeDomainBodyGyroscopeJerkMeanZ
61.  timeDomainBodyGyroscopeJerkStdX
62.  timeDomainBodyGyroscopeJerkStdY
63.  timeDomainBodyGyroscopeJerkStdZ
64.  timeDomainBodyGyroscopeMagnitudeMean
65.  timeDomainBodyGyroscopeMagnitudeStd
66.  timeDomainBodyGyroscopeMeanX
67.  timeDomainBodyGyroscopeMeanY
68.  timeDomainBodyGyroscopeMeanZ
69.  timeDomainBodyGyroscopeStdX
70.  timeDomainBodyGyroscopeStdY
71.  timeDomainBodyGyroscopeStdZ
72.  timeDomainGravityAccelerometerMagnitudeMean
73.  timeDomainGravityAccelerometerMagnitudeStd
74.  timeDomainGravityAccelerometerMeanX
75.  timeDomainGravityAccelerometerMeanY
76.  timeDomainGravityAccelerometerMeanZ
77.  timeDomainGravityAccelerometerStdX
78.  timeDomainGravityAccelerometerStdY
79.  timeDomainGravityAccelerometerStdZ

## Meaning

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeDomainAccelerometer-XYZ and timeDomainGyroscope-XYZ. 
These time domain signals (prefix 'timeDomain') were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeDomainBodyAccelerometer-XYZ and timeDomainGravityAccelerometer-XYZ) 
using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeDomainBodyAccelerometerJerk-XYZ and timeDomainBodyGyroscopeJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
(timeDomainBodyAccelerometerMagnitude, timeDomainGravityAccelerometerMagnitude, timeDomainBodyAccelerometerJerkMagnitude, timeDomainBodyGyroscopeMagnitude, timeDomainBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing the other features. (Note the 'frequencyDomain' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.