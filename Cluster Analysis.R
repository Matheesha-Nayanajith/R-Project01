pacman::p_load(dplyr, ggplot2)
head(mtcars)
df = mtcars[,c('mpg', 'wt', 'hp', 'am')]
head(df)

#kmeans----
#building kmeans clutering models with 3 senters 
km1 = kmeans(df, centers = 3)
km1
cbind(df, km1$cluster)
df[km1$cluster==1,]
df %>% filter(km1$cluster == 2)
table(km1$cluster)

#based on clusters lets find the mean of variables in our dataset
df %>% group_by(cluserNo = km1$cluster) %>% summarise_all(mean, na.rm=T)

#plotting the clusters using package factoextra
library(factoextra)
fviz_cluster(km1, data=df)

#how to choose best number of clusters - elbow method 
#elbow method contains 2 methods : factoextra and NbClust
#factoextra method 
set.seed(123)
?geom_vline
fviz_nbclust(df,kmeans, method = "wss")
fviz_nbclust(df,kmeans, method = "wss") + geom_vline(xintercept = 3, linetype = 2) + labs(subtitle = "Elbow method")


library(NbClust)
?NbClust







