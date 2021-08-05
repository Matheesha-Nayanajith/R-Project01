pacman::p_load(rpart, rpart.plot, dplyr)

#classification tree
#created for categorual variable and results in qualitative response
str(mtcars)

head(mtcars)
df = mtcars
df$am = factor(df$am)
str(df)


dt1 <- rpart(am ~ mpg, data = df, method = 'class')
dt1
?rpart.plot
rpart.plot(dt1)
rpart.plot(dt1, type = 1, nn = T)
rpart.plot(dt1, type = 2, extra = 104, nn = T)

df %>% select(mpg,am) %>% arrange(mpg)
