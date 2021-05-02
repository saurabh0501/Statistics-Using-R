die1 <- c(1,2,3,4,5,6,7,8,9,10,11,12)
die2<- c(1,2,3,4,5,6)

die1Rolls <- sample(die1, 10000, replace = TRUE)

die2Rolls <- sample(die2, 10000, replace = TRUE) + sample(die2, 10000, replace = TRUE)


par(mfrow = c(1,1))

barplot(table(die1Rolls), ylim = c(0,2000), xlab = "number", ylab = "count", main = "plotting counts for die 1 rolls")

barplot(table(die2Rolls), ylim = c(0,2000), xlab = "number", ylab = "count", main = "plotting counts for die 2 rolls")


#class  got over before going for the other parts