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
