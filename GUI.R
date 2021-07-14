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



