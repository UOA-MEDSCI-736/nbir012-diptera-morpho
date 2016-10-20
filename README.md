# Readme

## Project Name
Geometric morphometric analysis

## Project Overview
To use insect wing venation to assist in the taxonomic classification of specimens

## Format of Input Data
Data should be in a csv file and be composed of species, individual and relative warp scores for the landmarks you wish to analyse. An example csv data file would look like the following:

Individual,Species,Landmark1,Landmark2
1,D. bartelli,-0.0016316816,-0.0055491132
2,D. bartelli,0.0415954087,-0.0192371831
3,D. bartelli,0.0287000798,0.0247030366
4,D. cheesii,0.0148330646,0.0291651741
5,D. cheesii,0.019613929,0.0179274908
6,D. cheesii,-0.0152091721,-0.0153577926
7,D. dedede,-0.0008162313,0.002781127
8,D. dedede,-0.0016463603,0.0211843285
9,D. dedede,0.0017677592,0.0038379148
10,D. partay,-0.0089748178,0.0024667659
11,D. partay,0.0073749269,0.0083565268
12,D. partay,0.0047352877,0.0006836912
13,M. philly,0.0042193951,-0.0011717998
14,M. philly,0.0060138367,-0.0016608882
15,M. philly,-0.0077607068,0.0027570934

Key requirements: That the information data is presented in a comma delimited csv file.

Input data will be produced by the program tpsRelw (available here: http://life.bio.sunysb.edu/morph/). This will produce a txt file which contains the relative warps for landmarks and individuals.

This file can be run through the program format_to_CSV.py which will arrange the data into the correct format for the manova and will then save to csv. This csv file can then be used as the input for the Manova.R file.

## Instructions

### Instructions With Dummy Data
1. Go into Data/ folder
2. open example_data.csv
3. Ensure data is showing as a comma delimited csv file
4. Close data file if all is correct, or convert data to the correct format (refer to format of input data).
5. Go up one folder level and navigate into Code/
6. Open up Manova.R 
7. In line 2 change the file name to "example_data.csv"
8. Run code
9. Win! a wild manova output appeared

### Instructions with user supplied data
1. Go into Data/ folder
2. Save your user data as a csv file (refer to format of input data)
3. Ensure data is showing as a comma delimited csv file
4. Close data file if all is correct, or convert data to the correct format (refer to format of input data).
5. Go up one folder level and navigate into Code/
6. Open up Manova.R 
7. In line 2 change the file name to "what_ever_your_file_is_called.csv"
8. Adjust line 6 to contain the columns you wish to investigate. Do this by changing y1, y2, y3 to the columns you wish to the variances you wish to analyse and X to the factor you wish to explore.
8. Run code
9. Win! a wild manova output appeared

## Expected Output
The expected output should look like the below but with values that are different:

               Df        Pillai approx F num Df den Df    Pr(>F)    
data$C          3       1.85017   699.75      6    340 < 2.2e-16 ***
data$V          3       0.24953     8.08      6    340 3.601e-08 ***
data$C:data$V   9       0.31746     3.56     18    340 1.954e-06 ***

## Known Limitations
This software works for fly wing morphometric analysis. It may not work for other geometric morphometrics as this has not been tested for yet. 

## Licence
[The Unlicence] (https://github.com/nbir012/nbir012-diptera-morpho/blob/master/Documents/Licence.txt) 

## Contributors
Neil Birrell - Developer
Greg Holwell - product owner
Zeeshan - scrum master and slave driver
UoA Medsci736 teaching staff
