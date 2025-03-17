library()

help.start()
help(sum) # Accesses help file for function sum
?sum # Searches the help files for function sum
example(sum) # demonstrates the function with an example
help.search("sum") # uses the argument character to search help files

help(package="magick") # package documentation


data(iris)
?iris

D=iris
setwd("F:\\Dropbox\\University\\BioInformatics\\Slides\\Week1")
print(getwd())
save(D, file="myData.RData")

class(iris)
dim(iris)
head(iris)
head (iris, 10)
tail(iris)

str(iris)

myiris=data.frame(Sepal.Length=iris$Sepal.Length, Sepal.Width=
                    iris$Sepal.Width, Species= iris$Species)

myiris <- iris[,c(1,2,5)]

myiris <- iris[,-c(3,4)] # same as above

#adding a new column (cbind)
Stalk.Length <-c (rnorm(30,1,0.1),rnorm(30,1.3,0.1), rnorm(30,1.5,0.1),rnorm(30,1.8,0.1), rnorm(30,2,0.1))
?rnorm 

myiris <- cbind(iris, Stalk.Length)

# or in one step
myiris$Stalk.Length = c(rnorm(30,1,0.1),rnorm(30,1.3,0.1), rnorm(30,1.5,0.1),rnorm(30,1.8,0.1), rnorm(30,2,0.1))

dim(myiris)
colnames(myiris)# get column names for the data frame myiris

#adding a new row
newdat <- data.frame(Sepal.Length=10.1, Sepal.Width=0.5, Petal.Length=2.5, Petal.Width=0.9, Species="myspecies")
myiris <- rbind(iris, newdat)
dim(myiris)
myiris[151,]

#extract part from the dataframe
mynew.iris <- subset(myiris, Sepal.Length == 10.1)
mynew.iris
# or alternatively
mynew.iris <- myiris[myiris$Sepal.Length == 10.1, ]
mynew.iris

mynew.iris <- subset(iris, Species == "setosa")
mynew.iris
mynew.iris[1,]

# specifying conditions
# column 1 can have one of the values in mylength
mylength <- c(4,5,6,7,7.2)
mynew.iris <- myiris[myiris[,1] %in% mylength,]
mynew.iris
