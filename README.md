# Readme

## Project Name
Geometric morphometric analysis

## Project Overview
To use insect wing venation to assist in the taxonomic classification of specimens

## Format of Input Data
Data should be in a csv file and be composed of species (independent variable) and centroid values for the landmarks (dependent variables) you wish to analyse. 

Please note that the species name can be in any format e.g. Genus species, G. species, species, g. species etc.

The first row should contain titles for the column with column one being X and column 2, 3 and 4 being Landmark1, Landmark2, Landmark3.

An example csv data file would look like the following:

</style>
<table class="tg">
  <tr>
    <th class="tg-yw4l">X</th>
    <th class="tg-yw4l">Landmark1</th>
    <th class="tg-yw4l">Landmark2</th>
    <th class="tg-yw4l">Landmark3</th>
  </tr>
  <tr>
    <td class="tg-yw4l">D. bartletti</td>
    <td class="tg-yw4l">76.7</td>
    <td class="tg-yw4l">29.5</td>
    <td class="tg-yw4l">7.5</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. bartletti</td>
    <td class="tg-yw4l">60.5</td>
    <td class="tg-yw4l">32.1</td>
    <td class="tg-yw4l">6.3</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. bartletti</td>
    <td class="tg-yw4l">96.1</td>
    <td class="tg-yw4l">40.7</td>
    <td class="tg-yw4l">4.2</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. bartletti</td>
    <td class="tg-yw4l">88.1</td>
    <td class="tg-yw4l">45.1</td>
    <td class="tg-yw4l">4.9</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. bartletti</td>
    <td class="tg-yw4l">50.2</td>
    <td class="tg-yw4l">34.1</td>
    <td class="tg-yw4l">11.7</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. bartletti</td>
    <td class="tg-yw4l">55</td>
    <td class="tg-yw4l">31.1</td>
    <td class="tg-yw4l">6.9</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. bartletti</td>
    <td class="tg-yw4l">65.4</td>
    <td class="tg-yw4l">21.6</td>
    <td class="tg-yw4l">4.3</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. bartletti</td>
    <td class="tg-yw4l">65.7</td>
    <td class="tg-yw4l">27.7</td>
    <td class="tg-yw4l">5.3</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. costa</td>
    <td class="tg-yw4l">67.3</td>
    <td class="tg-yw4l">48.3</td>
    <td class="tg-yw4l">5.5</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. costa</td>
    <td class="tg-yw4l">61.3</td>
    <td class="tg-yw4l">28.9</td>
    <td class="tg-yw4l">6.9</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. costa</td>
    <td class="tg-yw4l">58.2</td>
    <td class="tg-yw4l">42.5</td>
    <td class="tg-yw4l">4.8</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. costa</td>
    <td class="tg-yw4l">76.9</td>
    <td class="tg-yw4l">20.4</td>
    <td class="tg-yw4l">3</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. costa</td>
    <td class="tg-yw4l">66.9</td>
    <td class="tg-yw4l">23.9</td>
    <td class="tg-yw4l">1.1</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. costa</td>
    <td class="tg-yw4l">55.4</td>
    <td class="tg-yw4l">29.1</td>
    <td class="tg-yw4l">5</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. costa</td>
    <td class="tg-yw4l">50.5</td>
    <td class="tg-yw4l">18</td>
    <td class="tg-yw4l">4.8</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. costa</td>
    <td class="tg-yw4l">64.1</td>
    <td class="tg-yw4l">14.5</td>
    <td class="tg-yw4l">3.7</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. maui</td>
    <td class="tg-yw4l">62.8</td>
    <td class="tg-yw4l">25.9</td>
    <td class="tg-yw4l">2.9</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. maui</td>
    <td class="tg-yw4l">45</td>
    <td class="tg-yw4l">15.9</td>
    <td class="tg-yw4l">1.2</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. maui</td>
    <td class="tg-yw4l">47.8</td>
    <td class="tg-yw4l">36.1</td>
    <td class="tg-yw4l">4.1</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. maui</td>
    <td class="tg-yw4l">75.6</td>
    <td class="tg-yw4l">27.7</td>
    <td class="tg-yw4l">6.3</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. maui</td>
    <td class="tg-yw4l">46.6</td>
    <td class="tg-yw4l">46.9</td>
    <td class="tg-yw4l">3.6</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. maui</td>
    <td class="tg-yw4l">50.6</td>
    <td class="tg-yw4l">29.7</td>
    <td class="tg-yw4l">4.7</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. maui</td>
    <td class="tg-yw4l">45.7</td>
    <td class="tg-yw4l">27.6</td>
    <td class="tg-yw4l">6.2</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. maui</td>
    <td class="tg-yw4l">68.4</td>
    <td class="tg-yw4l">35.3</td>
    <td class="tg-yw4l">1.9</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. corsa</td>
    <td class="tg-yw4l">52.5</td>
    <td class="tg-yw4l">39</td>
    <td class="tg-yw4l">3.1</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. corsa</td>
    <td class="tg-yw4l">80</td>
    <td class="tg-yw4l">54.2</td>
    <td class="tg-yw4l">4</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. corsa</td>
    <td class="tg-yw4l">54.7</td>
    <td class="tg-yw4l">32.1</td>
    <td class="tg-yw4l">5.7</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. corsa</td>
    <td class="tg-yw4l">63.5</td>
    <td class="tg-yw4l">25.6</td>
    <td class="tg-yw4l">3</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. corsa</td>
    <td class="tg-yw4l">46.3</td>
    <td class="tg-yw4l">31.8</td>
    <td class="tg-yw4l">7.4</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. corsa</td>
    <td class="tg-yw4l">61.5</td>
    <td class="tg-yw4l">16.8</td>
    <td class="tg-yw4l">1.9</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. corsa</td>
    <td class="tg-yw4l">62.9</td>
    <td class="tg-yw4l">25.8</td>
    <td class="tg-yw4l">2.4</td>
  </tr>
  <tr>
    <td class="tg-yw4l">D. corsa</td>
    <td class="tg-yw4l">49.3</td>
    <td class="tg-yw4l">39.4</td>
    <td class="tg-yw4l">5.2</td>
  </tr>
</table>

Key requirements: That the data is presented in a comma delimited csv file.

## Instructions

Download [nbir012-diptera-morpho] (https://github.com/nbir012/nbir012-diptera-morpho) and save to your computer.

### Instructions With Dummy Data
1. Within the downloaded project, navigate to the folder named Data/
2. open normal_morpho.csv
3. Ensure data is showing as a comma delimited csv file, there are four columns and 33 rows (including titles) and column 1 is labeled X and column 2,3 & 4 are labeled Landmark1, Landmark2 and Landmark3 
4. Close data file if all is correct, or convert data to the correct format (refer to format of input data).
5. Go up one folder level and navigate into Code/
6. Open up morphoManova.R 
7. Run line two of the code, a pop up will appear prompting you to select the data, navigate to the folder "Data/" in the project folder and select the normal_morpho.csv
8. select line 3 through to 66 of the code (so these lines are all highlighted) and select run. The packages required will automatically download, the assumption tests will check the selected data and the output will present a range of statistical analyses with some annotations to help the user interpret their output.
9. A wild manova output appears at the end.

### Instructions with user supplied data
1. Within the downloaded project navigate to the folder named Data/
2. Save your user data as a csv file (refer to format of input data)
3. Ensure data is showing as a comma delimited csv file, there are four columns and 33 rows (including titles) and column 1 is labeled X and column 2,3 & 4 are labeled Landmark1, Landmark2 and Landmark3 
4. Close data file if all is correct, or convert data to the correct format (refer to format of input data).
5. Go up one folder level and navigate into Code/
6. Open up morphoManova.R
7. Run line two of the code, a pop up will appear prompting you to select the data, navigate to the folder "Data/" in the project folder and select your csv file
8. select line 3 through to 66 of the code (so these lines are all highlighted) and select run. The packages required will automatically download, the assumption tests will check the selected data and the output will present a range of statistical analyses with some annotations to help the user interpret their output.
8. Run code
9. A wild manova output appears at the end.

## Expected Output
The expected output should look similar to the below but with values that are different:

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
- This software works for fly wing morphometric analysis providing there is the same number of rows and columns and title names. Currently it is hard coded however it will be made softcoded in later versions.

## Licence
[The Unlicence] (https://github.com/nbir012/nbir012-diptera-morpho/blob/master/Documents/Licence.txt) - applies to all code and text. and data (other than the DMP template supplied by UoA)
The data contained in the [figshare repo] (https://figshare.com/projects/nbir012-diptera-morpho/16794) contains its own licencing information. Please refer directly to this.

## Contributors
Neil Birrell - Developer

Greg Holwell - product owner

Zeeshan - scrum master

UoA Medsci736 teaching staff

