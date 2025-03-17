# install.packages("ape")
library(ape)

setwd("F:\\Dropbox\\University\\BioInformatics\\Slides\\R\\Week4\\PhyloGeneticAnalysisandTrees")

myset<-c("U15717","U15718", "U15719", "U15720","U15721","U15722","U15723","U15724")
myseqs<-read.GenBank(myset)
mydist<-dist.dna(myseqs)
myphylo<-triangMtd(mydist)

png("phylo.png",height=5.5, width=5.5,units="in",res=300, pointsize=10)

par(mfrow=c(2,2))
plot(myphylo, type="phylogram", edge.color="red", cex=1, edge.width=1,main="(A) Phylogram")
plot(myphylo, type="cladogram", edge.color="red", cex=1, edge.width=1, main="(B) Cladogram")
plot(myphylo, type="fan", edge.color="red", cex=1, edge.width=1, main="(C) Fan")
plot(myphylo, type="unrooted", edge.color="red", cex=1, edge.width=1, main="(D) Unrooted")

dev.off()
