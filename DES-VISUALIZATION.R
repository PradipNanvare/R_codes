1+1
2-2
1*2
4/2
6%%2
6^2
sqrt(10)

x<-5
y<-6
z<-11


x*y*z


########vectors
x<-c(1,2,3,4,5)
y<-c(2,3,4,5,6)

x+y
x*y

sqrt(x)

############to print the vectors or Acsess them


x[3]

x<-c(2,0,0,4)

x[1]

x[-1] ###minus use for exclude

#for add new value in the vector

x[1]<-3
x

x[-1]<-5
x

x<-c(1,9,9,9)
x

x<9

x[4]<-1
x

x<2

###########How to Create Data Frame


df<-data.frame(x=1:3,y=c("a","b","c"))
df

#print value 1



df[1,1]

#print value 1 & A

df[1,c(1,2)]

#print value a c

df[c(1,3),2]

#print 1 and 3

df[c(1,3),1]

#print 1 a 3 c
df[c(1,3),c(1,2)]


#################how to upload data

data<-datasets::airquality
data

#to extract first Column
data[,c(1,2)]

#top 10 Rows and Coumns
head(data,10)

tail(data,10)

data[,-6]


data$Ozone


#to summarize the Data

summary(
  data$Ozone
)

summary(data)

########ploting Of the Data

plot(data$Ozone)

plot(data$Temp,data$Wind,type="p")


#########point and Length

plot(data$Temp,type="l") #p use for the point

plot(data$Temp,type="p")

plot(data$Temp,data$Ozone,type="b")

##to give the name of x axis & y axis and coluour and main title
plot(data$Ozone,type="l",xlab="numbers",ylab="ozone",main="ozone levels",col="blue")

#####horizontal box plot

barplot(data$Ozone,xlab="num",ylab="ozone",main="ozone levels",col="red",horiz= F,axes = T )

#####histogram

hist(data$Temp,col="red") #this is positively skewed


#######Single Box Polt

boxplot(data$Wind,main="boxplot")

#to find the Outliers
boxplot.stats(data$Wind)$out

###for Miultiple Box Plots

boxplot(airquality[,1:4])

####Draw multiple charts
par(mfrow=c(3,3))
mar=c(2,5,2,1)

las=0

bty="o"

plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type="l")
plot(airquality$Ozone,type="l")
barplot(airquality$Ozone,main="oz con in Air",horiz = T,col="blue")

hist(airquality$Ozone)
boxplot(airquality$Temp)
