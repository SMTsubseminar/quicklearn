######## Data handling and visualization
##### Aim:
##### 1 learn how to deal with data frame
##### 2 learn how to visualize and summerize data
##### 3(optional) implement ordinary least square

### set working directory
setwd('your path to quick learn')


### make data frame

sex <- c('F', 'F', 'M', 'M', 'M')
height <- c(156, 173, 188, 160, 171)
weight <- c(49, 57, 73, 61, 64)

people <- data.frame(Sex=sex, Height=height, Weight=weight)
people

### how to access
### data frame has rows label(index) and col labels
### recall when you access to matrix elements!

people$Sex
people[, 1] # same result
people$Height
mean(people$Height)

people[people$Sex == 'F' & people$Height > 160,]

### summary statistics
summary(people)
by(people, people$Sex, summary)

### add column
people$ID <- 1:5


### save dataframe to csv
write.csv(people, file='./people.csv', row.names=FALSE)

### read from file
people.read <- read.csv('./people.csv')
people.read # same as people data


### other data about same people
income <- c(10000, 30000, 3000, 40000, 20000)
house <- c(T, F, F, T, T)

people.fin <- data.frame(Income=income, House=house)
people.fin$ID <- 1:5

### merge
people.merged <- merge(people, people.fin, all=F)
people.merged

### other functions
nrow(people.merged)
ncol(people.merged)
names(people.merged)

##### use dplyr

install.packages("dplyr")
library(dplyr)

people <- read.csv('people.csv')

people %>%
  filter(Sex=='F', Height>160) %>%
  as.data.frame()


