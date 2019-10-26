main<-read.csv2("/home/basarios/Dropbox/listas_trabajos_tablas_completas/halo_Archaea.csv", header=TRUE, sep=",")
row.names(main)<-main$genoma
main2<-data.matrix(main)
main2<-main2[,2:21]
View(main2)
pheatmap(main2, color=colorRampPalette(c("white", "lightblue", "red"))(100),clustering_method="mcquitty")



x <- seq(0, 4 * pi, 0.1)
n <- length(x)
y1 <- 0.5 * runif(n) + sin(x)
y2 <- 0.5 * runif(n) + cos(x) - sin(x)
plot(x, y1, col = "blue", pch = 20)
points(x, y2, col = "red", pch = 20)



ggplot(df, aes(x=var1, y=var2, fill=var3, color=var4, size=var5^2)) +
  geom_point(shape=21) +
  scale_color_gradient(low="red", high="green") +
  scale_size_continuous(range=c(1,12))


ggplot(halo_t, aes(x=score,y=repeats, fill=gc, color=genome,size=entropy*10,)) + geom_point(shape=21) 


y=color