#creates a pop up which asks the user to select their data for the MANOVA
morpho.df <- read.csv(file.choose(), header=T) 
morpho.df <- morpho.df[,1:n]

#assumption 1 -- check normality (linearity)
library(mvnormtest)
data.mat<- as.matrix(morpho.df)
C <- t(morpho.df[1:n,1:n])
mshapiro.test(R)

#assumption 2 -- check equality of covariance matrices
library(vegan)
dist.mat <- dist(morpho.df)
betadisper(dist.mat, group=as.factor(morpho.df$X))

#morphoManova which runs a MANOVA on the data
morphoManova <- manova ( cbind(Landmark1, Landmark2, Landmark3) ~ as.factor(X), data= morpho.df)
summary(morphoManova)
summary.aov(morphoManova)