myString <- "Hello , World"
print(myString)
x=read.csv("rlec 03.csv", header = F)
x
str(x)
x=read.csv("rlec 03.csv", header = T)
x
str(x)


abc = "https://support.staffbase.com/hc/en-us/article_attachments/360009197031/username.csv"
radio = read.table(abc, header = TRUE, sep = ",", stringsAsFactors = FALSE)
str(radio)
View(radio)

y=read.table('rlec 03.txt')
y
z=read.table("rlec 03.txt", header = T)
z

library(xlsx)
excel= read.xlsx('rlec 03.xlsx',sheetIndex = 1)
excel

efile= read.xlsx('rlec 03.xlsx',sheetIndex = 1, sheetName = 'rlec 03')
efile
efile1=read.xlsx('rlec 03.xlsx', 2)
efile1

library(gsheet)
url="https://docs.google.com/spreadsheets/d/1SGc63CYu7rsluEcfkX_iC1vmfWGCImI7Gg67mA7juCg/edit?usp=sharing"
abc=as.data.frame(gsheet2tbl(url))
abc

data()
?write.csv

write.csv(abc, file = "newdata")
abc


#Assignment operators
#leftward
h <- 10
i <<- 11
j = 12

#rightward
13 -> k
14 ->> l 

h #left
i #left
j #left
k #right
l #right

#Arithmetic Operators

x = 5
x
y = 2
y

x + y #addition 
x - y #Subtraction 
x * y #multiplication
x / y #division
x ^ y #exponent 
x %% y #gives the remaider
x %/% y #gives the quotient


#logical Operators
a = 5
b = 9

a < b 
a > b
a <= b 
a >= b
a == b
a != b

#logical Operators 
f = 14
f

#AND operator
f > 5 & f < 15
f > 5 & f < 15

#OR operator
f < 5 | f > 15
f > 5 | f > 15

#NOT operator
!(f < 5)
f < 5

is.numeric(5)
!is.numeric(5)


c(TRUE, TRUE, FALSE) & c(TRUE, FALSE, FALSE)

c(TRUE, TRUE, FALSE) | c(TRUE, FALSE, FALSE)

!c(TRUE, FALSE, FALSE)

c(TRUE, TRUE, FALSE) && c(TRUE, FALSE, FALSE)
c(TRUE, TRUE, FALSE) || c(FALSE, FALSE, FALSE)

c(TRUE, TRUE, FALSE) && c(TRUE, FALSE, FALSE)
c(TRUE, TRUE, FALSE) || c(FALSE, FALSE, FALSE)

#Data Structures
##Vectors----
#Numeric
x = c(2,3,4)
x
class(x)
length(x)

#characters
y = c('a', 'b', 'c')
y
class(y)

#logical
z= c(TRUE, TRUE, FALSE, FALSE)

#Integers
a = c(1L, 2L, 3L)
class(a)

#Adding element to vector
y = c(y, 'd')
y

#vectors from a Sequence of numbers 
series= 1:10
seq(10)
seq(1,10,1.5)


#matrix 
m= matrix(1:10, nrow = 2, ncol = 5)
m
#checking dimension 
dim(m)

#matrix filled row wise with giving names to rows and columns
(mymatrix= matrix(1:6,nrow = 3, byrow = T, dimnames = list(c("d", "e", "f"), c("a", "b")) ))

#matrix filled column wise
(mymatrix= matrix(1:6,nrow = 3,byrow = F))

m <- 1:10
dim(m) = c(5,2)
m

#adding column to matrix (cbind)
c= c(7,8,9)
mymatrix1= cbind(mymatrix, c)
mymatrix1

d= c(10,11,12)
mymatrix2= cbind(mymatrix1, d)
mymatrix2

#Adding row to a matrix (rbind)
g= c(13,14,15,16)
mymatrix3= rbind(mymatrix2, g)
mymatrix3



#List
(v1 = 1:5)
class(v1)
(v2 = month.abb[4:10])
class(v2)
(v3 = c(T, F, T, F))
class(v3)
(combinedV = c(v1 ,v2 ,v3))
class(combinedV)

list1 = list(v1,v2, v3)
list1

#create two vectors of different lengths
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")

#take these vectors as input to the array
result <- array(c(vector1,vector2),dim = c(3,3,2), dimnames = list(row.names,column.names,matrix.names))
print(result)




