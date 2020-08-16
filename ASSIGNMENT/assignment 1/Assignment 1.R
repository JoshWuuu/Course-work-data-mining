install.packages("ISLR")
require(ISLR)
data(College)
str(College)


# i.
summary(College)
# ii.
pairs(College[,1:10])
# iii.
boxplot(Outstate~Private, data=College, xlab="Private", ylab="Outstate")
# iv.
Elite <- rep("No", nrow(College))
Elite[College$Top10perc>50] <- "Yes"
College <- data.frame(College, Elite)
summary(College)  # 78 Elite
boxplot(Outstate~Elite, data=College, xlab="Elite", ylab="Outstate")
# v. 
par(mfrow=c(2,2))
hist(College$Apps, breaks=50, xlim=c(0,25000), main="Apps")
hist(College$Enroll, breaks=25, main="Enroll")
hist(College$Expend, breaks=25, main="Expend")
hist(College$Outstate, main="Outstate")
