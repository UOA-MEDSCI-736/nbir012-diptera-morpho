#creates a pop up which asks the user to select their data for the MANOVA
morpho.df <- read.csv(file.choose(), header=T) 
morpho.df <- morpho.df[,1:n]

#morphoManova which runs a MANOVA on the data
morphoManova <- manova ( cbind(Landmark1, Landmark2, Landmark3) ~ as.factor(X), data= morpho.df)
summary(morphoManova)
summary.aov(morphoManova)