#grafiquitas para dapc


1
2


getwd()
chacha=read.genalex("tortu2.csv", ploidy = 2, geo = FALSE, region = FALSE,
             genclone = TRUE, sep = ",", recode = TRUE)




chacha


## Not run: 
data(H3N2)
dapc1 <- dapc(H3N2, pop=H3N2$other$epid, n.pca=30,n.da=6)

## defautl plot ##
scatter(dapc.datotes, label=NULL)

## label individuals at the periphery
# air = 2 is a measure of how much space each label needs
# pch = NA suppresses plotting of points
scatter(dapc.datotes, label.inds = list(air = 2, pch = NA), label=NULL, posi.da="topleft")

## showing different scatter options ##
## remove internal segments and ellipses, different pch, add MStree
scatter(dapc.datotes, pch=16:18, cstar=0, mstree=FALSE, lwd=2, lty=2, posi.da="topleft",posi.pca = "topright", label=NULL )

## only ellipse, custom labels, use insets
scatter(dapc.datotes, cell=2, pch="", cstar=0, posi.pca="topleft", posi.da="topleft", scree.pca=TRUE,
        inset.pca=c(.01,.3), label=paste("pop\n",p1:p6), axesel=FALSE, col=terrain.colors(10))

## without ellipses, use legend for groups
scatter(dapc.datotes, cell=0, cstar=0, scree.da=FALSE, clab=0, cex=3,
        solid=.4, bg="white", leg=TRUE, lwd=2, lty=2, posi.da="topleft",posi.pca = "topright",)

## only one axis
scatter(dapc.datotes,1,1,scree.da=FALSE, legend=FALSE, solid=.25,bg="white", label=TRUE, col=c("red","blue","green","purple","darkred","darkorange"))



## example using genlight objects ##
## simulate data
x <- glSim(50,4e3-50, 50, ploidy=2)
x
plot(x)

## perform DAPC
dapc2 <- dapc(x, n.pca=10, n.da=1)
dapc2

## plot results
scatter(dapc.datotes, scree.da=FALSE, leg=TRUE, txt.leg=paste("group",
                                                       c('A','B')), col=c("red","blue"))

## SNP contributions
loadingplot(dapc.datotes$var.contr)
loadingplot(tail(dapc.datotes$var.contr, 100), main="Loading plot - last 100 SNPs")



## assignplot / compoplot ##
assignplot(dapc.datotes)

data(microbov)
dapc3 <- dapc(microbov, n.pca=20, n.da=15)
compoplot(dapc.datotes, lab="")

## End(Not run)


Example output

