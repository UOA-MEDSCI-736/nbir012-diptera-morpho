#IMPORTANT: the first column in your data must = independent variable
#remaining columns must be dependent variables

#creates a pop up which asks the user to select their data for the MANOVA
morpho.df <- read.csv(file.choose(), header=T) 
morpho.df <- morpho.df[,1:n]
#df <- read.csv(file.choose(), header=T) 
#several assumptions must be met for a MANOVA. We test them below.



#assumption 3 -- absence of multicollinearity
library(biotools)


#assumption 4 -- independence -- from study design (no R test for this it is assumed that you designed your study well!)

#morphoManova which runs a MANOVA on the data
morphoManova <- manova ( cbind(Landmark1, Landmark2, Landmark3) ~ as.factor(X), data= morpho.df)
summary(morphoManova)
summary.aov(morphoManova)

#creating a MANOVA function for easy calling in future. This function takes the first column as the independent variable and all the remaining columns as dependent variables
morphoManova <- function(manova.df){
  
  n <- ((ncol(morpho.df)))
  #subsetting out the first column as a factor
  X <- as.factor(morpho.df[,1])
  
  for(data in 2:n){
    morpho.df[,data] <- as.numeric(morpho.df[,data])
  }
  
  dep.mat <- as.matrix(df[,2:n])
  
  
  landmarks.manova1 <- manova(dep.mat ~ X) 
  
  summary.aov(landmarks.manova1)}


