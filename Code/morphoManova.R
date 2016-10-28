#creates a pop up which asks the user to select their data for the MANOVA
morpho.df <- read.csv(file.choose(), header=T) 
morpho.df <- morpho.df[,1:4]
morpho.df$Landmark1 <- as.numeric(morpho.df$Landmark1)
morpho.df$Landmark2 <- as.numeric(morpho.df$Landmark2)
morpho.df$Landmark3<- as.numeric(morpho.df$Landmark3)

#assumption 1 -- check normality (linearity)
library(mvnormtest)
data.mat<- as.matrix(morpho.df)
C <- t(morpho.df[1:32,2:4])
mshapiro.test(C)
# normal-ish but central limit theorem applies

#assumption 2 -- check equality of covariance matrices
library(vegan)
dist.mat <- dist(morpho.df)
betadisper(dist.mat, group=as.factor(morpho.df$X))

dist.mat <- dist(u)
betadisper(dist.mat, group=as.factor(u[,1]))

# Manova script
morphoManova <- function(manova.df){
  #defining n as the total number of columns in the dataframe
  n <- ((ncol(morpho.df)))
  #subsetting out the first column as a factor (the independent variables)
  X <- as.factor(morpho.df[,1])
  #opening up a for loop which takes numeric values from column 2 through to n and 
  # assigns it to 'data'
  for(data in 2:n){
    morpho.df[,data] <- as.numeric(morpho.df[,data])
  }
  # assigns values in the data frame to a matrix from columns 2 to n 
  # and then assigns it to the term dep.mat (dependents matrix)
  dep.mat <- as.matrix(df[,2:n])
  
  # assigns the manova command to the name landmarks.manova1 and tests 
  # the dependents matrix against the independent column (X)
  landmarks.manova1 <- manova(dep.mat ~ X) 
  # produces a summary of analysis of variance of the MANOVA command.
  summary.aov(landmarks.manova1)}


#creating the function morphoManova
#u is the data frame with the first column 
#being the dependant variable in factor form
#proceeding columns are numeric independent variables.
morphoManova <- function(u) 
{
  # Multivariate normality of data assumption test
  
  # concatenate & print a title so it is easy to distinguish in the output
  cat("\n *****Multivariate normality of data assumption test***** \n \n")
  # Download, if required, and apply mvnormtest package
  library(mvnormtest)
  # creating a matrix out of the dataframe
  data.mat<- as.matrix(u) 
  # creating C which has transposed data of rows 1-32 and columns 2-34
  # if you want to change the number of columns and rows, you would need to do so here
  C <- t(u[1:32,2:4])
  # prints the output of the multivariate shapiro test performed on our data, C.
  print(mshapiro.test(C))
  # Print out a message to inform the user how to understand the output of mshapiro.
  cat("\n if p-value is greater than 0.05 then data is either normal/central limit theorem may apply if more than 30 samples \n if p-value is less than 0.05 and if there are less than 30 samples then the data is not normal and a MANOVA should not be used \n \n")
  
  # Homogeneity of Covariance matrices assumption test
  # concatenate & print a title so it is easy to distinguish in the output produced
  cat("\n *****Homogeneity of Covariance matrices assumption test***** \n \n")
  # download and install the vegan package
  library(vegan)
  # assign the distribution of u to the term dist.mat (distribution matrix)
  dist.mat <- dist(u)
  # Prints out the output of the multivariate homogeniety of group variances
  print(betadisper(dist.mat, group=as.factor(u[,1])))
  # explaining how to interpret the results
  cat("\n This is an informal test that relies on the user to check the average distance to median and ensure that there are no wild outliers, this is called 'eyeballing' and there are no set rules in the case of the normal_morpho.csv D. bartletti is slightly out but not enough to be of concern \n \n")
  
  
  # concatenating & printing a title so it is easy to distinguish in the output
  cat("\n *****MANOVA Results***** \n \n")
  # Manova coercion, defining n as being number of columns of u (previously defined)
  n <- ((ncol(u)))
  # subsetting out the first column as a factor (the independent variables)
  X <- as.factor(u[,1])
  
  # opening up a for loop which takes numeric values from column 2 through to n and 
  # assigns it to 'data'
  for(data in 2:n)
  {
    u[,data] <- as.numeric(u[,data])
  }
  
  # assigns values in the data frame to a matrix from columns 2 to n 
  # and then assigns it to the term dep.mat (dependents matrix)
  dep.mat <- as.matrix(u[,2:n])
  
  # assigns the manova command to the name landmarks.manova1 and tests 
  # the dependents matrix against the independent column (X)
  landmarks.manova <- manova(dep.mat ~ X) 
  # produces a summary of analysis of variance of the MANOVA command.
  print(summary.aov(landmarks.manova))
  cat("\n The summary of MANOVA results will show the propbability of  \n \n you may get a warning message stating 'In dist(u) : NAs introduced by coercion' however this can be ignored")

}

morphoManova(morpho.df)




#morphoManova which runs a MANOVA on the data
morphoManova <- manova ( cbind(Landmark1, Landmark2, Landmark3) ~ as.factor(X), data= morpho.df)
summary(morphoManova)
summary.aov(morphoManova)