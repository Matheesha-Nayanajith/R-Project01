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






