mtcars
df %>% arrange(desc(cyl))
df %>% group_by(cyl) %>% arrange((desc(mpg)))
arrange(df, cyl, desc(disp))#arrange the rows in the descending order of disp and then in the ascending order of cyl
df %>% arrange(desc(wt))
arrange(airquality, desc(Month), Day)#arrange the rows in the descending order of momth, and then in the ascending order of Day


#summarise function ----
?summarise 
df %>% summarise(Mmpg = mean(mpg))
df %>% summarise(disp = mean(disp),hp = mean(hp))
df %>% group_by(am) %>% summarise(meands = mean(disp), n = n())#n() is the count - here no of cars

df %>% group_by(am) %>% summarise(meanmpg = mean(mpg), n = n())

#filter function ----
?filter
filter(df, cyl == 6)
df %>% filter(carb>4)
df %>% filter(mpg > mean(mpg))
df %>% filter(cyl == 4,disp>90)
head(airquality)
range(df$disp)

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
