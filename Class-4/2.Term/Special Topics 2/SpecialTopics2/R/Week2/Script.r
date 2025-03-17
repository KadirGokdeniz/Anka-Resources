summary(iris)

cor(iris[,1], iris[,2])
cor(iris[,1], iris[,3])

Cov.mat <- cov(iris[,1:4])
Cov.mat


a <- c(1:4, NA, 6)
mean(a) # returns NA

mean(a, na.rm=TRUE)

?Distributions

# bell shape
n.data <- rnorm(n=100, mean=1, sd=0.1)
hist(n.data)
plot(density(n.data))

#t-test
data(sleep)
test <- t.test(sleep[,1]~sleep[,2])
test

#chi-square
cont <- matrix(c(14, 33, 7, 3), ncol = 2)
cont
colnames(cont) <- c("Sedan", "Convertible")
rownames(cont) <- c("Male", "Female")
cont
test <- chisq.test(as.table(cont))
test

#wilcoxon
x <- c(1.83, 0.50, 1.62, 2.48, 1.68, 1.88, 1.55, 3.06, 1.30)
y <- c(0.878, 0.647, 0.598, 2.05, 1.06, 1.29, 1.06, 3.14, 1.29)

test <- wilcox.test(x, y, paired = TRUE, alternative ="greater")
str(test)
test$p.value

#visualization
sl <- iris[,1]
pl <- iris[,4]
plot(x=pl, y=sl, xlab="Petal length", ylab="Sepal length", col="black", main="Varition of sepal length with petal length")

plot(with(iris, plot(x = Sepal.Length, y=Petal.Length))
     
boxplot(Sepal.Length~Species, data=iris, ylab="sepal length",xlab="Species", main="Sepal length for different species")
     

genex <- c(rnorm(100, 1, 0.1), rnorm(100, 2, 0.1), rnorm(50, 3,0.1))
plot(x=genex, xlim=c(1,5), type='l', main="line diagram")


x <- rnorm(1000, 3, 0.02)
hist(x)
plot(density(x))
