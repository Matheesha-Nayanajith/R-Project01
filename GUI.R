#simple scatterplot----
?plot

X1 = 1:10
Y1 = X1^2
X1
Y1
plot(x=X1 , y=Y1)

#adding linetype
plot(x=X1, y=Y1, type='p') #lty = linetype = points
plot(x=X1, y=Y1, type='l') #lty = linetype = lines
plot(x=X1, y=Y1, type='b') #lty = linetype = both

#adding line width, color and cex(size of point)
plot(x=X1, y=Y1, type='b', lwd= 1, col = 'red', cex=1)
plot(x=X1, y=Y1, type='b', lwd= 2, col = 'red', cex=1.5)
plot(x=X1, y=Y1, type='b', lwd= 3, col = 'red', cex=2)

 #change the limits of x and y xaxis
plot(x=X1, y=Y1, xlim=c(0,10), ylim = c(0,100), type = 'b', cex=1, col='blue')

#using mtcars dataset: plotting mpg and weight
plot(mtcars$wt, mtcars$mpg, col = 'blue', pch = 20, cex=1.5)
plot(mtcars$wt, mtcars$mpg, col = 'blue', pch = 20, cex=1, xlab = 'weight', ylab = 'Mileage', main = 'Weight vs MPG' )

table(mtcars$gear)
table(mtcars$cyl)
x
plot(x = mtcars$wt, y = mtcars$mpg, col = mtcars$cyl, pch = mtcars$gear, cex = 1, xlab = 'Weight', ylab = 'Mileage', main = 'weight vs Mileage')

#add fit lines
abline(lm(mtcars$mpg~mtcars$wt), col="red") #regression line (y~x)
#plotting wt mpg graph and adding legends to it
#X-Weight, Y-Milleage, colore-Cylinder , Shape- Gear , Size - AM : points
lapply(mtcars[,c('cyl','gear','am')], table)#count of each category cols

#you should know this to plan how many colors, shapes, size to choose
plot(x = mtcars$wt, y = mtcars$mpg, col = c(1,2,3), pch = c(20,21,22), cex=c(1,2), xlab = 'Weight' , ylab = 'Mileage' , main = "Weight vs Mileage")


?InsectSprays
InsectSprays

?boxplot
#showing mean of mpg
boxplot(x=mtcars$mpg, col = 'green') #col = column for plotting 
abline(h=mean(mtcars$mpg))

abline(h=quantile(mtcars$mpg))
boxplot(x=mtcars$mpg, col = 'green', horizontal = T)#horizental = directon of boxplot

# boxplot on a formula:
?InsectSprays
boxplot(count ~ spray, data = InsectSprays, col = "lightgray")
# *add* notches (somewhat funny here <--> wrnning "notches.. outside hinges"):
boxplot(count ~ spray, data = InsectSprays,
        notch = T, col = "blue")

#notch is used to compare groupps in the notched boxplot, if two boxes' notces do not overlap this is 
##if we put notch=T,we'll get a warning message by saying " some notches went outside hinges ('box'):maybe set notch=FALSE"


#Using formula for mtcars 
boxplot(mpg ~ cyl, data = mtcars,
        xlab = "Number of cylinders",
        ylab = "Miles per Gallon",
        motch = TRUE,
        main = "Mileage Data",
        col = c("green","yellow","purple"),
        names = c("High","Medium","Low"))



#graph autos with adjacent bars using rainbow colours
cars <- c(1, 3, 6, 4, 9)
trucks <-c(2, 5, 4, 5, 12)
suvs = c(4,4,6,6,16)
autos_data = data.frame(cars,trucks,suvs)
autos_data
barplot(autos_data$cars, main ="Auto Data", xlab = "Days",
        ylab = "Total", names.arg=c("Mon","Tue","wed","Thu","Fri"),
        border="blue", density=c(10,20,30,40,50))

#graph autos with adjactent bar using rainbow colours
barplot(as.matrix(autos_data), main ="autos", ylab = "Tatal",
        beside = T, col = rainbow(5))



legend("topleft", c("Mon","Tue","wed","Thu","Fri"), cex=1,
       byt="n", fill = rainbow(5))

#graph autos (transposing the matrix) using heat colours
#put 10% of the space between each bar, and make labels
#smaller with horizental y-axis lables
autos_data

barplot(t(autos_data),main="Autos", ylab="Total",
        col=heat.colors(3),space=0.1, cex.axis=0.8, las=1,
        names.arg=c("Mon","Tue","Wed","Thu","Fri"),cex=0.8)

legend("topleft", c("Cars","Trucks","Suvs"),cex=1,
       bty="n", fill=heat.colors(3))

legend("top", c("Cars","Trucks","Suvs"),cex=1,
       bty="n", fill=heat.colors(3))

?hist
#Histogrm for a normally distributed data 
hist(rnorm(1000))
hist(rnorm(1000), probability = T)

#histogrm for a skewed data 
hist(islands)#gives results in frequencies
hist(islands,probability = T)#proportion (or probabilities)
hist(islands, breaks = 5, main = "islands histogrm", xlab = "Area range", border = "red", col = "grey")


head(airquality)
hist(airquality$Temp)

#adding label names and title
hist(airquality$Temp,
     main="Temperature Histogram",
     xlab="Temperature",
     ylab="Temperature Frequency",
     las=1)

#adding color to bars
hist(airquality$Temp,
     main="Tempareture Histogram",
     xlab="Temparature",
     ylab="Temperature Frequency",
     las=1,
     col=c("skyblue","chocolate2"))

#removing all the annotation and axis lim and name to give our own
hist(airquality$Temp,
     axes=F,
     ann=F,
     labels=T,
     ylim=c(0,35),
     col = c("skyblue","chocolate2"))


#specifying own annotations
hist(airquality$Temp,
     main="Tempareture Histogram",
     xlab="Temparature",
     ylab="Temperature Frequency",
     las=1,
     col=c("skyblue","chocolate2"),
     xlim=c(55,100),
     ylim=c(0,40),
     density=80)

#giving the number of breaks and adding numbers to the bars
hist(airquality$Temp,
     breaks=20,
     main="Tempareture Histogram",
     xlab="Temparature",
     ylab="Temperature Frequency",
     las=1,
     col=c("skyblue","chocolate2"),
     labels = T,
     ylim=c(0,25)
)

#changing frequency on y axis to density/probability values; removing labels also as they are in freq value only and adding density line
hist (airquality$Temp,
      breaks = 20,
      freq=F,
      main="Tempareture Histogram",
      xlab="Temparature",
      ylab="Temperature Frequency",
      las=1,
      col=c("skyblue","chocolate2"),
      labels = T,
)

lines(density(airquality$Temp),
      lwd=4,col="red")

hist(airquality$Temp,
     breaks=20,
     main="Tempareture Histogram",
     xlab="Temparature",
     ylab="Temperature Frequency",
     las=1,
     col=c("skyblue","chocolate2"),
     labels = T,
     ylim=c(0,25) )

#pie chart ----
#pie chart are used to show parts of whole
#represents numbers in percentages are the total sum all the divided segments equal 100 percent

#create a pie chart for cars
cars <- c(1, 3, 6, 4, 9)
pie(cars)

#custom colors and labels
pie(cars, main = "Cars", col = rainbow(length(cars)),
    labels = c("Mon","Tue","Wed","Thu","Fri"))

#define some colours ideal for black & white print
colors <- c("white","grey70","grey90","grey50","black")

#calculate the percentage for each day , rounded to one 
#decimal place
car_labels <- round(cars/sum(cars) * 100, 1)
car_labels
#concatenate a '%' char after each value
car_labels <- paste(car_labels,"%", sep = " ")
car_labels

# and labels
pie(cars, main = "Cars", col = colors, labels = car_labels,
    cex=0.8)
# create a legend at the right 
legend('topright', c("Mon","Tue","Wed","Thu","Fri"), cex=0.8,
       fill = colors)
#3D Exploded pie chart
library(plotrix)
slices <- c(10,12,4,16,8)
lbls <-c("US","UK","AUS","GER","FRNS")
pie3D(slices,labels = lbls,explode = 0.2,
      main = "pie chart of Countries")

#GGPlot2 ----
library(ggplot2)
library(dplyr)

mtcars

#SCATTER PLOT ----

#basic scatter plot (wt vs mpg)
plot(mtcars$wt, mtcars$mpg)

#1st layer of ggplot - creating base for plotting
ggplot(data = mtcars, aes(x=wt, y=mpg))

#adding geometry to graph
ggplot(data = mtcars, aes(x=wt, y=mpg)) + geom_point()

#adding aesthetics : color, size and shape of point
ggplot(data = mtcars, aes(x=wt, y=mpg)) + geom_point(color='red', size=3)
ggplot(data = mtcars, aes(x=wt, y=mpg)) + geom_point(color='red', size=3, shape = 20)
head(mtcars)
table(mtcars)
table(mtcars$gear)
table(mtcars$carb)
table(mtcars$am)

#adding different dimensions of ggplot now : adding col as per no, of cyl
#ggplot(data = mtcars, aes(x=wt, y=mpg)) + geom_point(color = cyl, size=3, shape=20) Error
ggplot(data = mtcars, aes(x=wt, y=mpg)) + geom_point(aes(color = cyl), size=3, shape=20)
ggplot(data = mtcars, aes(x=wt, y=mpg)) + geom_point(aes(color = factor(cyl)), size = 3,
                                                     shape = 20)

#adding different dimensions to ggplot now : adding size as per types of transmission 
ggplot(data = mtcars, aes(x=wt, y=mpg)) + geom_point(aes(color = factor(cyl), size = factor(am)), shape = 20)

#adding different dimensions to ggplot now : adding size as per types of transmission 
ggplot(data = mtcars, aes(x=wt, y=mpg)) + geom_point(aes(color = factor(cyl), size = factor(am), shape = factor(gear)))

#adding labales to the graph 
ggplot(data = mtcars, aes(x=wt, y=mpg)) + geom_point(aes(shape=factor(gear), size=factor(am), color=factor(
cyl))) + labs(title = 'Adding dimensions to graph', subtitle = 'Scatter Plot', x='weight', y='Mileage')

#adding text to points, name of the cars
ggplot(data=mtcars, aes(x=wt, y=mpg)) + geom_point(aes(color = factor(cyl), size=factor(am), shape = factor(gear))) + facet_grid(cyl + vs~carb) + labs(title='Adding dimensions to graph ', subtitle = 'Scatter Plot', x= 'Weight', y ='Mileage') + geom_text(aes(labal = rownames(mtcars)), size = 2.5)
ggplot(data=mtcars, aes(x=wt, y=mpg)) + geom_point(aes(color = factor(cyl), size=factor(am), shape = factor(gear))) + facet_grid(cyl + vs~carb) + labs(title='Adding dimensions to graph ', subtitle = 'Scatter Plot', x= 'Weight', y ='Mileage') + geom_text(aes(label = rownames(mtcars)), size = 2.5)



#adding text to points,name of the cars using ggrepel package to make graph tidy
library(ggrepel)
ggplot(data=mtcars, aes(x=wt,y=mpg))+ geom_point(aes(color=factor(cyl),size=factor(am),shape=factor(gear)))+ facet_grid(vs~carb)+labs(title='Adding dimensions to graph', subtitle='Scatter Plot', x='Weight', y='Mileage') +  ggrepel::geom_text_repel(aes(label=rownames(mtcars)),size=2.5)





