main<-read.csv2("/home/basarios/Dropbox/listas_trabajos_tablas_completas/halo_Archaea.csv", header=TRUE, sep=",")
row.names(main)<-main$genoma
main2<-data.matrix(main)
main2<-main2[,2:21]
View(main2)
pheatmap(main2, color=colorRampPalette(c("white", "lightblue", "red"))(100),clustering_method="mcquitty")



