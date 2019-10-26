library("factoextra")
library("cluster")
library("magrittr")

row.names(pam_plus)=pam_plus$num
pamplus2=as.data.frame(pam_plus)
pamplus2=pamplus2[,2:13]
pamplus2=na.omit(pamplus2)
pamplus2=scale(pamplus2)






#sobre el análisis de todos los componentes
row.names(sis)=sis$num
sis2=as.data.frame(sis)
sis2=sis2[,2:13]
sis2=na.omit(sis2)
sis2=scale(sis2)


#sobre el análisis de todos los componentes
row.names(dis)=dis$num
dis2=as.data.frame(dis)
dis2=dis2[,2:13]
dis2=na.omit(dis2)
dis2=scale(dis2)

row.names(todo)=todo$num
todo2=as.data.frame(todo)
todo2=todo2[,2:21]

todo2=na.omit(todo2)
todo2=scale(todo2)



row.names(pam)=pam$num
pam2=as.data.frame(pam)
pam2=pam2[,2:13]

pam2=na.omit(pam2)
pam2=scale(pam2)

res.dist_omega1<- get_dist(sis2, stand = TRUE, method = "kendall")
res.dist_omega2<- get_dist(dias2, stand = TRUE, method = "kendall")
res.dist_omega3<- get_dist(todo2, stand = TRUE, method = "kendall")
res.dist_omega4<- get_dist(pam2, stand = TRUE, method = "kendall")



fviz_dist(res.dist_omega1, 
          gradient = list(low = "white", mid = "orange", high = "darkred"), lab_size=4.5) #excepcion kendall





fviz_dist(res.dist_omega2, 
          gradient = list(low = "white", mid = "blue", high = "darkblue"), lab_size=4.5) #excepcion kendall



fviz_dist(res.dist_omega3, 
          gradient = list(low = "white", mid = "yellow", high = "red"), lab_size=4.5) #excepcion kendall



fviz_dist(res.dist_omega4, 
          gradient = list(low = "green", mid = "white", high = "orange"), lab_size=4.5) #excepcion kendall


fviz_nbclust(sis2, kmeans, method = "gap_stat")
fviz_nbclust(dias2, kmeans, method = "gap_stat")
fviz_nbclust(pam2, kmeans, method = "gap_stat")
fviz_nbclust(todo2, kmeans, method = "gap_stat")



res.nbclust= NbClust(sis2, distance = "euclidean",
                     min.nc = 2, max.nc = 10, 
                     method = "complete", index ="all")



res.nbclust2= NbClust(dis2, distance = "euclidean",
                     min.nc = 2, max.nc = 10, 
                     method = "complete", index ="all")




res.nbclust= NbClust(todo2, distance = "euclidean",
                     min.nc = 1, max.nc = 10, 
                     method = "complete", index ="all")


res.nbclust= NbClust(pamplus2, distance = "euclidean",
                     min.nc = 2, max.nc = 10, 
                     method = "complete", index ="all")




set.seed(123)
km.res <- kmeans(sis2, 2, nstart = 25)
fviz_cluster(km.res, data = my_data,
             ellipse.type = "convex",
             palette = "jco", check.names=TRUE,
             ggtheme = theme_minimal())

set.seed(123)
km.res3 <- kmeans(dis2, 1, nstart = 25)
fviz_cluster(km.res, data = my_data,
             ellipse.type = "convex",
             palette = "jco",
             ggtheme = theme_minimal())

set.seed(123)
km.res <- kmeans(pam2, 2, nstart = 25)
fviz_cluster(km.res, data = my_data,
             ellipse.type = "convex",
             palette = "jco",
             ggtheme = theme_minimal())

set.seed(123)
km.res <- kmeans(todo2, 2, nstart = 25)
fviz_cluster(km.res, data = my_data,
             ellipse.type = "convex",
             palette = c("red", "blue"),
             ggtheme = theme_minimal())


set.seed(123)
km.res <- kmeans(pamplus2, 2, nstart = 25)
fviz_cluster(km.res, data = my_data,
             ellipse.type = "convex",
             palette = c("green", "orange"),
             ggtheme = theme_minimal())



set.seed(123)
res.nbclust4=  NbClust(sis2, distance = "euclidean",
          min.nc = 1, max.nc = 10, 
          method = "complete", index ="all") 
