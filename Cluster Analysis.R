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

#NbClust method:
library(NbClust)
?NbClust

set.seed(1234)
nc<-NbClust(df,distance="euclidean", min.nc=2,max.nc=6, method="kmeans")
nc

marks1=c(65,60,70,75,67)
marks2=c(95,80,52,55,57)
project=c(120,100,90,80,110)
exam3=data.frame(marks1,marks2,project)

#project marks will be more dominating
exam3scaled=scale(exam3)#function used to scale the data
exam3scaled
cluster2C=kmeans(exam3scaled,centers=2)
cluster2C
cluster2C$cluster
cbind(exam3,group=cluster2C$cluster)


#hierarchical clustering -----
df = mtcars[,c('mpg', 'wt', 'hp', 'am')]
dfD = dist(df)
dfD

#example for distaance matrix 
#using the data created exam3 
exam3
#project marks will be more dominating 
xam3scaled = scale(exam3)
exam3scaled
res.dist <- dist(exam3, method = "euclidean")
res.dist

hc = hclust(dfD)
plot(hc) # which car is closer to the other 

sub_grp <- cutree(hc, k = 4)
#number of members in each cluster 
table(sub_grp)


#creating models using different methods : average
hc.average = hclust(dfD, method = 'average')
hc.average
plot(hc.average, hang=-1, cex=.8, main='Average Likage Clustering : cluster Nos')


rect.hclust(hc.average, k=4, border = 2:6)
plot(hc.average, hang = -1, cex=.8, main = 'Avarage Linkage Clustering')
rect.hclust(hc.average, h=100)


abline(h=100)