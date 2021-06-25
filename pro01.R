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

