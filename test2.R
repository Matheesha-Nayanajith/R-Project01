#subsetting the data 
#square bracket notation

df = matrix(1:12, nrow=4, byrow = F)
df
#return row 1
df[1, ]

#return column 1
df[,3]

#values of rows 1:3 in column 2
df[1:3, 2]

#subset a vectior 
x <- c(2.1, 4.2, 3.3, 5.4)
x
#extracting 3rd and 1st elements 
x[c(3, 1)]
#omit element at the specified positions 
x[-c(3,1)]

#logical vectors select element where the corresponding logica values 
x[c(T, T, F, F)]
x[x > 3]

#nothing returns the original vectors 
x[]

#if the vector is named
(y <- setNames(x, letters[1:4]))
#extraction with the column name 
y[c("d", "c", "a")]

#example 2
a <- matrix(1:9, nrow =3)
colnames(a) <- c("A", "B", "c")
a
#extracting 1st and 2nd rows from list 
a[1:2,]
#extracting element at position of 3rd row and 3rd column 
a[3,3]

#excluding 2nd column 2nd row
a[-2,-2]

#subsettting data frame
df <- data.frame(x = 4:6, y = 3:1, z = letters[1:3])
df

df[df$y == 1, ]


#subset function

set.seed(1234)
x <- round(matrix(rnorm(30,1),  ncol = 5), 2)
y <- c(1, seq(5))
x <- cbind(x,y)
x

#converting x into a data frame called x.df
x.df <- data.frame(x)
x.df
?rnorm

#subsetting rows using the subset function 
subset(x.df, y > 2)

#subsetting rows using multiple conditional stetements 
subset(x.df, y > 2 & V1 > 0.2)

#subsetting both rows and columns 
?subset
subset(x.df, y > 2 & V2 > 0.4, select = c(V1, V4))

#creat using vectors
(rollno = 1:10)
(name = paste('S', 1:10, sep = ''))
(age = round(rnorm(10, mean = 25, sd=2),1))
(gender = sample(c('M','F'),size=10, replace = T))
df2 = data.frame(rollno, name, age, gender)
df2

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
########
efile= read.xlsx('rlec 03.xlsx',sheetIndex = 1, sheetName = 'rlec 03')
efile
efile1=read.xlsx('rlec 03.xlsx', 2)
efile1

#sub setting data frame----
df<-data.frame(x=1:3,y=3:1,z=letters[1:3])
df
df[df$x==2,]

df[df$y==2,]

df[df$x==1,]
df[df$x==3,]


#Sub setting a function
set.seed(1234)
x<-round(matrix(rnorm(30,1), ncol=5),2)
y<-c(1,seq(5))
#combining x and y into one matrix
x<-cbind(x,y)
x

#converting x into data frame x.df
x.df<-data.frame(x)
x.df
?rnorm

#sub-setting rows using the subset function
subset(x.df,y>2)

#sub-setting rows using multiple conditional statements
subset(x.df,y>2 & V1>0.2)

#sub-setting both rows and columns
?subset
subset(x.df,y>2 & V2>0.4,select=c(V1,V4))


#Sub-setting which()statement and conditional statements
#Which function----
?which

letters
which(letters=="z")
which(letters=="s")

#using data frame WOMEN
women
which(women$height==66)
which(women$height>=70)

#which for sub-setting vector and using conditions
#example1
j=c(2,3,4,5,6,7,8,9,23,24,22,1,10)
j>6
which(j>6)
a=j[which(j>6)]
a

letters
LETTERS
which(LETTERS=="K")

#Example2
marks=c(10,20,30,40,60)
which(marks>30)
marks[which(marks>30)]

#example3-using grep command
names=c('jack','jill','tom','jerry','buggs','bunny')
#which names have bu
grep('[bu]',names,ignore.case=T)
names[grep('[bu]',names,ignore.case=T)]

?grep

#example4
mtcars
which(mtcars$mpg>25)
mtcars[which(mtcars$mpg>25),]


#compute the mean
mean(mtcars$mpg)

#compute the median value
median(mtcars$mpg)

#compute the variance 
var(mtcars$mpg)

#compute the standerd deviation 
sd(mtcars$mpg)

#compute the minimum value
min(mtcars$mpg)

#compute the maximum value
max(mtcars$mpg)

#range
range(mtcars$mpg)

#generic function
summary(mtcars$mpg)

#interquartil rang 
quantile(mtcars$mpg, probs = seq(0, 1, 0.25))

#column and row sum, solumn and row means
df = data.frame(a=c(1,2,3,4,5,6,7), b=c(7,6,5,4,3,2,4))
df

#column sum 
colSums(df)

#row sum
rowSums(df)

#column means
colMeans(df)

#row means
rowMeans(df)


#apply()
?apply
#apply(x, MARGIN, FUN, ...)
#data frame creation
df <- data.frame(first = c(1:10), second = c(11:20), third = c(21:30))
df

#2 (margin is for columns)
#
apply(df, 2, mean)

#1 (margin) os for rows
apply(df, 1, mean)

#sorting the data
x <- cbind(x1 =3, x2 = c(4:1, 2:5))
x
dimnames(x)[[1]] <- letters[1:8]
x
apply(x, 2, mean)
col.Sums <- apply(x, 2,sum)
col.Sums
row.sums <- apply(x, 1, sum)
row.sums

apply(x, 2, sort)

#lapply----
#Eg1:

#Create a list of matrices
(A = matrix(1:9,nrow = 3, byrow = F))
(B = matrix(4:15,nrow = 4, byrow = F))
(C = data.frame(x=c(8,9,10),y=c(8,9,10)))
MyList <- list(A,B,C)
MyList

#Extract the 2nd column from 'MyList' with the selection operator '[' with lappli()
lapply(MyList,"[",, 2)

# Extract the 1st row from 'MyList'
lapply(MyList,"[", 1, )

#Extract a single element for each matrice from "MyList"
lapply(MyList,"[", 1, 2)
MyList

#Eg2:
movies <- c("SPIDERMAN","BATMAN","VERTIGO","CHINATOWN")
movies_lower <- lapply(movies, tolower)
movies_lower

#Sapply()----
A = lapply(MyList,"[", 1, 1)
A
Z = sapply(MyList,"[", 1, 1)
Z

#tapply----
#mean MPG of each AM type in mtcars... df = mtcars %>% select(-am)
names(mtcars)
AM1=mtcars[,'am']
AMCYL1 = mtcars[, c('cyl','am')]
MPG1=mtcars[, c('mpg')]
tapply(MPG1, AM1, mean)
tapply(MPG1, AMCYL1, mean)
?tapply
head(mtcars)

#rep()
z = sapply(MyList,"[", 1, 1)
z

a = rep(z,c(3,1,2))
a
?rep


#mapplly
q = matrix(c(rep(1, 4), rep(2, 4), rep(3, 4), rep(4, 4)),4,4)
q
p = mapply(rep,1:4,4)
p

mapply(sum, 1:4, 1:4, 1:4)

#Aggregate Function in R----
chickwts #to understand the function

head(ChickWeight)#using a inbuilt dataset

data = ChickWeight#copying the dataset to another veriable for ease
dim(data) #checking dimension of the dataset

# Now to use aggregate; the usage as defined by ? aggregate:
# aggregate(x, by, FUN, )

#aggregating the mean weight depending on diet
aggregate(data$weight, by = list(diet = data$Diet), FUN = 'mean')

#find the mean weight depending on time and diet
aggregate(data$weight, by = list(time = data$Time, diet = data$Diet), FUN = 'mean')

#to get first 6 and last 6 data, use function head() and tail()
head(aggregate(data$weight, by = list(time = data$Time, diet = data$Diet), FUN = mean))
tail(aggregate(data$weight, by = list(time = data$Time, diet = data$Diet), FUN = mean))

#finding max weight for each diet
aggregate(data$weight, by = list(diet = data$Diet), FUN = max)



