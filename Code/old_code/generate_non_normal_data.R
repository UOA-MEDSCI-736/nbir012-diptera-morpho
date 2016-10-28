#generate non-normal data file for testing:

y1 <- c((rnorm(8, 10, 3)), (rnorm(8, 10, 7)), (rnorm(8, 10, 2)), (rnorm(8, 20, 2)), (rnorm(8, 3, 2)), (rnorm(8, 9, 2)))
y2 <- c((rnorm(8, 10, 2)), (rnorm(8, 10, 2)), (rnorm(8, 15, 2)), (rnorm(8, 10, 2)), (rnorm(8, 8, 2)), (rnorm(8, 13, 2)))
y3 <- c((rnorm(8, 3, 2)), (rnorm(8, 10, 2)), (rnorm(8, 20, 2)), (rnorm(8, 11, 2)), (rnorm(8, 11, 2)), (rnorm(8, 3, 2)))
x <- c((rep(1,8)), (rep(2,8)), (rep(3,8)), (rep(4,8)), (rep(5,8)), (rep(6,8)))
write.csv(cbind(x,y1,y2,y3), file="non_normal_morpho.csv")