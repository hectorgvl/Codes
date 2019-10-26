
library("factoextra")
library("cluster")
library("magrittr")

#medidor de distancia para ver como se distribuyen los datos
#primero llamo a la informacion de los arrrestos de USA


data("USArrests")

my_data <- USArrests
my_data<-na.omit(my_data) 
my_data<-scale(my_data)
# Ver las primeras 5 líneas presentes en el arreglo 

head(my_data, n = 5)


#medimos la distancia entre los diferentes valores solo para diferenciar si es posible continuar 
#con estos datos y analisis

#con metodo y escalado
res.dist <- get_dist(my_data, stand = TRUE, method = "pearson")

#con los datos raw o crudos 
riesgo <- get_dist(USArrests, stand = TRUE, method = "pearson")


#representacion con los colores variados 
fviz_dist(riesgo, 
          gradient = list(low = "#00AFBB", mid = "white", high = "#FC4E07"))



#por metodo de particion
#los valores y metodos establecidos 

fviz_nbclust(my_data, kmeans, method = "gap_stat")

#ojo, aqui me falto comentarles, esta funcion puede funcionar con diferentes metodos para solicitar el clustering
#es conveniente saber si es lineal, para poder relacionarlos adecuadamente
#los metodos pueden ser:  "silhouette" (for average silhouette width), "wss" (for total within sum of square)  "gap_stat" (for gap statistics).
#el cercano a los sistemas de particion es el gap stat


#para empezar con metodo kmeans, el cual puede verse alterado por la muestra 

set.seed(123)
resultado_kmeans <- kmeans(my_data, 3, nstart = 25)

library("factoextra")
fviz_cluster(resultado_kmeans, data = my_data,
             ellipse.type = "convex",
             palette = "jco",
             ggtheme = theme_minimal())

#metodo alterno de particion, metodo pam

pam.res <- pam(USArrests, 3)
pam.res2 <- pam(my_data, 3)

print(pam.res)
print(pam.res2)

dd <- cbind(USArrests, cluster = pam.res$cluster)
head(dd, n = 3)
#es posible acceder a los valores de los medioides establecidos por este metodo de cluster
pam.res$medoids
head(pam.res$clustering)
View(pam.res$clustering)

#pruebenlo con las dos versiones, el sistema de cumulos es equivalente para lo escalado 
#frente a lo raw

head(pam.res2$clustering)
View(pam.res2$clustering)

fviz_cluster(pam.res)


fviz_cluster(pam.res2)

fviz_cluster(pam.res2,
             palette = c("#00AFBB", "#FC4E07", "green"), # color palette
             ellipse.type = "t", # Concentration ellipse
             repel = TRUE, # Avoid label overplotting (slow)
             ggtheme = theme_classic()
)


res.hc<- USArrests %>% scale() %>% dist(method="euclidean") %>% hclust(method="ward.D2")
res.hc




#si buscan mas colores es posible consultarlo aqui 
#http://www.sthda.com/english/wiki/colors-in-r

#cabe mencionar que a mi experiencia de los aglomerativos se presentan 
#como el mcquitty y el ward D2 aunque su procesamiento es diferencial

#para ver un comportamiento entre valores x y y, estos pueden ser ingresados igual por matriz, solo es 
conveniente recoradar posiciones y valores

set.seed(1234)
# 500 en dos clusters
df <- rbind(cbind(rnorm(200,0,8), rnorm(200,0,8)),
            cbind(rnorm(300,50,8), rnorm(300,50,8)))
# nombres de columnas y lineas
colnames(df) <- c("x", "y")
rownames(df) <- paste0("S", 1:nrow(df))


fviz_nbclust(df, clara, method = "silhouette")+
  theme_classic()

#en esta serie de datos se establecen dos clusters diferentes
clara.res <- clara(df, 2, samples = 1000, pamLike = TRUE)
print(clara.res)

dd <- cbind(df, cluster = clara.res$cluster)
head(dd, n = 4)
clara.res$medoids

head(clara.res$clustering, 10)

fviz_cluster(clara.res,
             palette = c("#00AFBB", "#FC4E07"), # color palette
             ellipse.type = "t", # Concentration ellipse
             geom = "point", pointsize = 1,
             ggtheme = theme_classic()
)

rownames(df)[grp == 1]


#Jerarquico

#el metodo que se uso es el euclideano, sin embarg, usen uno que sea no parametrico o chequen 
#primero las propiedades de los datos
#se siguen las mismas reglas, se mide la distanmcia yu luego se midel la forma de agruparlos, para el segundo caso
#se presenta como the agglomeration method to be used. This should be 
#(an unambiguous abbreviation of) one of "ward.D", "ward.D2", "single", "complete", "average" (= UPGMA), "mcquitty" (= WPGMA), "median" (= WPGMC) or
#"centroid" (= UPGMC). Para este caso se presenta el ward.D2 como el mas popular para su utilizacion.





fviz_dend(res.hc, k = 4, # Cut in four groups
          cex = 0.5, # label size
          k_colors = c("#2E9FDF", "#00AFBB", "#FC4E07"),
          color_labels_by_k = TRUE, # color de los letreros por el grupo
          rect = TRUE # rectangulo sobre los grupos 
)


#aglomerativo o divisivo, dependiendo de como trabaje y establezca las diferencias, del mismo
#modo los algoritmos de aglomeracion que eso es lo que utiliza se establecen con reglas generales
#complete: hace referencia a las diferencias de los dos clusters entre si, establece clusters pequeños



res.coph <- cophenetic(res.hc)

cor(res.dist, res.coph)
res.hc2 <- hclust(res.dist, method = "average")
cor(res.dist, cophenetic(res.hc2))

#obtener los cortes dentro del analisis

grp <- cutree(res.hc, k = 4)
head(grp, n = 4)
table(grp)
rownames(df)[grp == 1]


fviz_dend(res.hc, k = 4, # Cut in four groups
          cex = 0.5, # label size
          k_colors = c("#2E9FDF", "#00AFBB", "#E7B800", "#FC4E07"),
          color_labels_by_k = TRUE, # color labels by groups
          rect = TRUE # Add rectangle around groups
)


#cortar y presentarlos dentro del modelo de cluster

fviz_cluster(list(data = my_data, cluster = grp),
             palette = c("#2E9FDF", "#00AFBB", "#E7B800", "#FC4E07"),
             ellipse.type = "convex", # Concentration ellipse
             repel = TRUE, # Avoid label overplotting (slow)
             show.clust.cent = FALSE, ggtheme = theme_minimal())


rownames(my_data)[grp==1]

fviz_dend(res.hc, k = 4, # Cut in four groups
          cex = 0.5, # label size
          k_colors = c("#2E9FDF", "#00AFBB", "#E7B800", "#FC4E07"),
          color_labels_by_k = TRUE, # color labels by groups
          rect = TRUE # Add rectangle around groups
)



fviz_cluster(list(data = my_data, cluster = grp),
             palette = c("#2E9FDF", "#00AFBB", "#E7B800", "#FC4E07"),
             ellipse.type = "convex", # Concentration ellipse
             repel = TRUE, # Avoid label overplotting (slow)
             show.clust.cent = FALSE, ggtheme = theme_minimal())





library("cluster")
# Agglomerative Nesting (Hierarchical Clustering)
res.agnes <- agnes(x = USArrests, # data matrix
                   stand = TRUE, # Standardize the data
                   metric = "euclidean", # metric for distance matrix
                   method = "ward" # Linkage method
)


res.diana <- diana(x = USArrests, # data matrix
                   stand = TRUE, # standardize the data
                   metric = "euclidean" # metric for distance matrix
)

fviz_dend(res.agnes, cex = 0.6, k = 4)
