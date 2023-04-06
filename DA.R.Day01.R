rep (3,10)
seq(4,20, by=4)
a<- c(2,3,4,5)
a
b<- c("a","b",5)
b
c<- c(1,2,3,"a")
d<- c(1,4,3,5,3,6,6,2)
d[7]
d[1:4]
d[-1]
d[-1: -4]
a<-data.frame(x=1:3,y=c("a","b","c"))
View(a)
a[1,1]
a[1,]  #for first row first column
a[c(1,3),1]
a[-2,1]
a[c(1,3),c(1,2)]
admission<-read.csv("C:/Users/suraj/OneDrive/Desktop/Admission_Prediction.csv")
View(admission)
head(admission,10)
tail(admission,5)


# day 3
airquality <- datasets::airquality
View(airquality[,c(1,2)])
View(airquality[,-6])
df<- airquality[,-6]
View(df)

## summary of data
View(summary(airquality))
summary(airquality[,1])
summary(airquality$Month)



##data visulization
plot(airquality$Wind)
plot(airquality$Wind, airquality$Temp, type = "h")
#l= line , b= combination of point line ,h= histogram ,h= bars , s= stair steps

plot(airquality)

plot(airquality$Ozone, xlab = "ozone concentration", ylab = "No of instance",
     main = "Ozone level in newyork city", col= "blue")
barplot(airquality$Ozone, xlab = "ozone concentration", ylab = "No of instance",
        main = "Ozone level in newyork city", col= "red", horiz = T)
barplot(airquality$Ozone, xlab = "ozone concentration", ylab = "No of instance",
        main = "Ozone level in newyork city", col= "yellow", axex = T)
hist(airquality$Temp, xlab = "Temprature", ylab = "frequency", main = "airquality temperature",
     col="red")     


#boxplot 

boxplot(airquality$Wind)
boxplot.stats(airquality$Wind)$out

#multi box plot

boxplot(airquality[,1:4], main= "multibox plot")
par (mfrow= c(3,3))
plot(airquality$Wind)
boxplot(airquality$Wind)
hist(airquality$Solar.R)
plot(airquality$Temp, type = "l")
boxplot(airquality$Temp)
boxplot(airquality[,1:4])
boxplot(airquality$Wind)

sd(airquality$Wind)


library(moments)
library(moments)
skewness(airquality$Wind)
kurtosis(airquality$Wind)
