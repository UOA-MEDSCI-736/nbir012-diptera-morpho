# Readme

## Project Name
Geometric morphometric analysis

## Project Overview
To use insect wing venation to assist in the taxonomic classification of specimens

## Format of Input Data
Data should be in a csv file and be composed of species, individual and relative warp scores for the landmarks you wish to analyse. 

Please note that the species name can be in any format e.g. Genus species, G. species, species, g. species etc.

An example csv data file would look like the following:

<table class="tg">
  <tr>
    <th class="tg-yw4l">Individual</th>
    <th class="tg-yw4l">Species</th>
    <th class="tg-yw4l">Landmark1</th>
    <th class="tg-yw4l">Landmark2</th>
  </tr>
  <tr>
    <td class="tg-yw4l">1</td>
    <td class="tg-yw4l">D. bartelli</td>
    <td class="tg-yw4l">-0.0016316816</td>
    <td class="tg-yw4l">-0.0055491132</td>
  </tr>
  <tr>
    <td class="tg-yw4l">2</td>
    <td class="tg-yw4l">D. bartelli</td>
    <td class="tg-yw4l">0.0415954087</td>
    <td class="tg-yw4l">-0.0192371831</td>
  </tr>
  <tr>
    <td class="tg-yw4l">3</td>
    <td class="tg-yw4l">D. bartelli</td>
    <td class="tg-yw4l">0.0287000798</td>
    <td class="tg-yw4l">0.0247030366</td>
  </tr>
  <tr>
    <td class="tg-yw4l">4</td>
    <td class="tg-yw4l">D. cheesii</td>
    <td class="tg-yw4l">0.0148330646</td>
    <td class="tg-yw4l">0.0291651741</td>
  </tr>
  <tr>
    <td class="tg-yw4l">5</td>
    <td class="tg-yw4l">D. cheesii</td>
    <td class="tg-yw4l">0.019613929</td>
    <td class="tg-yw4l">0.0179274908</td>
  </tr>
  <tr>
    <td class="tg-yw4l">6</td>
    <td class="tg-yw4l">D. cheesii</td>
    <td class="tg-yw4l">-0.0152091721</td>
    <td class="tg-yw4l">-0.0153577926</td>
  </tr>
  <tr>
    <td class="tg-yw4l">7</td>
    <td class="tg-yw4l">D. dedede</td>
    <td class="tg-yw4l">-0.0008162313</td>
    <td class="tg-yw4l">0.002781127</td>
  </tr>
  <tr>
    <td class="tg-yw4l">8</td>
    <td class="tg-yw4l">D. dedede</td>
    <td class="tg-yw4l">-0.0016463603</td>
    <td class="tg-yw4l">0.0211843285</td>
  </tr>
  <tr>
    <td class="tg-yw4l">9</td>
    <td class="tg-yw4l">D. dedede</td>
    <td class="tg-yw4l">0.0017677592</td>
    <td class="tg-yw4l">0.0038379148</td>
  </tr>
  <tr>
    <td class="tg-yw4l">10</td>
    <td class="tg-yw4l">D. partay</td>
    <td class="tg-yw4l">-0.0089748178</td>
    <td class="tg-yw4l">0.0024667659</td>
  </tr>
  <tr>
    <td class="tg-yw4l">11</td>
    <td class="tg-yw4l">D. partay</td>
    <td class="tg-yw4l">0.0073749269</td>
    <td class="tg-yw4l">0.0083565268</td>
  </tr>
  <tr>
    <td class="tg-yw4l">12</td>
    <td class="tg-yw4l">D. partay</td>
    <td class="tg-yw4l">0.0047352877</td>
    <td class="tg-yw4l">0.0006836912</td>
  </tr>
  <tr>
    <td class="tg-yw4l">13</td>
    <td class="tg-yw4l">M. philly</td>
    <td class="tg-yw4l">0.0042193951</td>
    <td class="tg-yw4l">-0.0011717998</td>
  </tr>
  <tr>
    <td class="tg-yw4l">14</td>
    <td class="tg-yw4l">M. philly</td>
    <td class="tg-yw4l">0.0060138367</td>
    <td class="tg-yw4l">-0.0016608882</td>
  </tr>
  <tr>
    <td class="tg-yw4l">15</td>
    <td class="tg-yw4l">M. philly</td>
    <td class="tg-yw4l">-0.0077607068</td>
    <td class="tg-yw4l">0.0027570934</td>
  </tr>
</table>

Key requirements: That the information data is presented in a comma delimited csv file.

Input data will be produced by the program tpsRelw (available here: http://life.bio.sunysb.edu/morph/). This will produce a txt file which contains the relative warps for landmarks and individuals.

This file can be run through the program format_to_CSV.py which will arrange the data into the correct format for the manova and will then save to csv. This csv file can then be used as the input for the Manova.R file.

## Instructions

Download [nbir012-diptera-morpho] (https://github.com/nbir012/nbir012-diptera-morpho) and save to your computer.

### Instructions With Dummy Data
1. Within the downloaded project navigate to the folder named Data/
2. open example_data.csv
3. Ensure data is showing as a comma delimited csv file
4. Close data file if all is correct, or convert data to the correct format (refer to format of input data).
5. Go up one folder level and navigate into Code/
6. Open up Manova.R 
7. In line 2 change the file name to "example_data.csv"
8. Run code
9. Win! a wild manova output appeared

### Instructions with user supplied data
1. Within the downloaded project navigate to the folder named Data/
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

<table class="tg">
  <tr>
    <th class="tg-yw4l"></th>
    <th class="tg-yw4l">Df</th>
    <th class="tg-yw4l">Pillai</th>
    <th class="tg-yw4l">approx F</th>
    <th class="tg-yw4l">num Df</th>
    <th class="tg-yw4l">den Df</th>
    <th class="tg-yw4l">Pr(&gt;F)</th>
    <th class="tg-yw4l"></th>
  </tr>
  <tr>
    <td class="tg-yw4l">data$C</td>
    <td class="tg-yw4l">3</td>
    <td class="tg-yw4l">1.85017</td>
    <td class="tg-yw4l">699.75</td>
    <td class="tg-yw4l">6</td>
    <td class="tg-yw4l">340</td>
    <td class="tg-yw4l">&lt; 2.2e-16</td>
    <td class="tg-yw4l">***</td>
  </tr>
  <tr>
    <td class="tg-yw4l">data$V </td>
    <td class="tg-yw4l">3</td>
    <td class="tg-yw4l">0.24953</td>
    <td class="tg-yw4l">8.08</td>
    <td class="tg-yw4l">6</td>
    <td class="tg-yw4l">340</td>
    <td class="tg-yw4l">0.000000036</td>
    <td class="tg-yw4l">***</td>
  </tr>
  <tr>
    <td class="tg-yw4l">data$C:data$V</td>
    <td class="tg-yw4l">9</td>
    <td class="tg-yw4l">0.31746</td>
    <td class="tg-yw4l">3.56</td>
    <td class="tg-yw4l">18</td>
    <td class="tg-yw4l">340</td>
    <td class="tg-yw4l">0.000001954</td>
    <td class="tg-yw4l">***</td>
  </tr>
</table>

## Known Limitations
- This software works for fly wing morphometric analysis. It may not work for other geometric morphometrics as this has not been tested for yet.
- 

## Licence
[The Unlicence] (https://github.com/nbir012/nbir012-diptera-morpho/blob/master/Documents/Licence.txt) - applies to all code, text and data (other than the DMP template supplied by UoA)

## Contributors
Neil Birrell - Developer

Greg Holwell - product owner

Zeeshan - scrum master

UoA Medsci736 teaching staff

