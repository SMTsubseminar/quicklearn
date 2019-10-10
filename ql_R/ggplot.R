##### data visualization with ggplot

install.packages("ggplot2")
install.packages("wooldridge")
install.packages("ggThemeAssist")
library(ggplot2)
library(wooldridge)
library(dplyr)

data("crime1")

head(crime1)
str(crime1)
summary(crime1)

crime <- crime1 %>%
  mutate(black=as.factor(black), hispan=as.factor(hispan), born60=as.factor(born60)) %>%
  as.data.frame()


summary(crime)
names(crime)

### scatter plot

ggplot(data=crime, aes(x=qemp86, y=inc86, colour=black))+
  geom_point()+
  theme_bw()

ggplot(data=crime, aes(x=qemp86, y=inc86, colour=black, shape=born60))+
  geom_point()+
  theme_bw()

### histgram
ggplot(data=crime, aes(x=inc86, fill=black))+
  geom_histogram(binwidth = 50)

ggplot(data=crime, aes(x=inc86, fill=black))+
  geom_histogram(position="dodge", binwidth=50)



# plot time series data as line graph

data("economics")
str(economics)
econ <- economics %>%
  as.data.frame()
summary(econ)

head(econ)

ggplot(data=econ, aes(x=date, y=unemploy))+
  geom_line()

ggplot(data=econ, aes(x=date, y=unemploy))+
  geom_line()+
  scale_x_date(date_breaks="3 years")


### bar plot
data("gpa1")
force(gpa1)
summary(gpa1)

ggplot(data=gpa1, aes(x=age, y=alcohol))+
  stat_summary(fun.y="mean", geom="bar")

# options
ggplot(data=gpa1, aes(x=age, y=alcohol))+
  stat_summary(fun.y="mean", geom="bar")+
  # stat_summary(fun.data=mean_cl_normal, geom="errorbar", alpha=0.6, width=1, size=1)+
  scale_y_continuous(expand=c(0, 0))


### box plot
gpa <- gpa1 %>%
  mutate(age=as.factor(age)) %>%
  as.data.frame()


### theme set

g <- ggplot(data=gpa, aes(x=age, y=alcohol))+
  geom_boxplot()

g + theme(plot.subtitle = element_text(vjust = 1), 
    plot.caption = element_text(vjust = 1), 
    plot.title = element_text(family = "mono", 
        size = 22, hjust = 0.5)) +labs(title = "Alcohol box plot", subtitle = "Relationship between age and alcohol")



