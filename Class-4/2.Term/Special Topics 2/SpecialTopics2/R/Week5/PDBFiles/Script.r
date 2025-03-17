library(protr)
library(bio3d)
pdb <- read.pdb("1BG2")

class(pdb)
attributes(pdb)
head(pdb)
head(pdb$atom[, c("x","y","z")])

head(pdb$atom[pdb$calpha, c("resid", "elety", "x","y","z")])

aa321(pdb$seqres)

setwd("F:\\Dropbox\\University\\BioInformatics\\Slides\\R\\Week5\\PDBFiles")
write.pdb(pdb, file="myPDBfile.pdb")
read.pdb("myPDBfile.pdb")

