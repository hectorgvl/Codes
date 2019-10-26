fviz_nbclust(df, pam, method = "silhouette")
clara.res <- clara(df, 2, samples = 50, pamLike = TRUE)
dd <- cbind(df, cluster = clara.res$cluster)
fviz_cluster(clara.res,
             palette = c("#00AFBB", "#FC4E07"), # color palette
             ellipse.type = "t", # Concentration ellipse
             geom = "point", pointsize = 1,
             ggtheme = theme_classic()
)






  library(factoextra)
fviz_nbclust(df, kmeans, method = "wss") +
  geom_vline(xintercept = 4, linetype = 2)


fviz_nbclust(df, kmeans, method = "wss")
  
res.dist <- dist(df, method = "euclidean")
res.hc <- hclust(d = res.dist, method = "ward.D2")
res.coph <- cophenetic(res.hc)
cor(res.dist, res.coph)

fviz_dend(res.hc, cex = 0.5)

fviz_dend(res.hc, k = 4, # Cut in four groups
          cex = 0.5, # label size
          k_colors = c("#2E9FDF",  "#E7B800", "green", "purple"),
          color_labels_by_k = TRUE, # color labels by groups
          rect = TRUE # Add rectangle around groups
)

grp <- cutree(res.hc, k = 5)
fviz_cluster(list(data = df, cluster = grp),
             palette = c("#2E9FDF", "red", "purple", "green", "brown"),
             ellipse.type = "convex", # Concentration ellipse
             repel = TRUE, # Avoid label overplotting (slow)
             show.clust.cent = FALSE, ggtheme = theme_minimal())
