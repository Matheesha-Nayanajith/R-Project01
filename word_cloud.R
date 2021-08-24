mtcars
df %>% arrange(desc(cyl))
df %>% group_by(cyl) %>% arrange((desc(mpg)))
arrange(df, cyl, desc(disp))#arrange the rows in the descending order of disp and then in the ascending order of cyl
df %>% arrange(desc(wt))
arrange(airquality, desc(Month), Day)#arrange the rows in the descending order of momth, and then in the ascending order of Day

