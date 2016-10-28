#Generate normal datafile for testing:
y1 <- c((rnorm(8, 10, 2)), (rnorm(8, 10, 2)), (rnorm(8, 10, 2)), (rnorm(8, 10, 2)), (rnorm(8, 10, 2)), (rnorm(8, 10, 2)))
y2 <- c((rnorm(8, 10, 2)), (rnorm(8, 10, 2)), (rnorm(8, 10, 2)), (rnorm(8, 10, 2)), (rnorm(8, 10, 2)), (rnorm(8, 10, 2)))
y3 <- c((rnorm(8, 20, 2)), (rnorm(8, 20, 2)), (rnorm(8, 20, 2)), (rnorm(8, 20, 2)), (rnorm(8, 20, 2)), (rnorm(8, 20, 2)))
x <- c((rep(1,8)), (rep(2,8)), (rep(3,8)), (rep(4,8)), (rep(5,8)), (rep(6,8)))
write.csv(cbind(x,y1,y2,y3), file="normal_morpho.csv")