setwd("/home/admin736/Desktop/share-git/sandbox-1/nbir012-diptera-morpho/Data/")
df <- read.csv("variance_data.csv", header = TRUE)
## What are the column names in the dataset?
names(df)
## Y1 <- cbind(y1, y2, y3)
landmarks.manova1 <- manova ( cbind(y1, y2, y3) ~ as.factor(X), data= df)
summary(landmarks.manova1)
#summary(landmarks.manova1, test = "Roy")
#summary(landmarks.manova1, test = "Hotelling-Lawley")
#summary(landmarks.manova1, test = "Pillai")
#summary(landmarks.manova1, test = "Wilks")
## Look to see which differ
#summary.aov(landmarks.manova1)


