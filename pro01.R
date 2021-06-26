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





