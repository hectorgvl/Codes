library("ape")
#biostrings es un paquete de Bioconductor, es necesario esto para instalar
#todo el paquete completo y manejar los archivos nwk

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("Biostrings", version = "3.8")
library("Biostrings")
library("ggplot2")

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("ggtree", version = "3.8")


library("ggtree")



