library(bio3d) 
pdb <- read.pdb("1BG2") 

mySeq <- aa321(pdb$seqres) 

MyBlast <- blast.pdb( pdbseq(pdb) ) 
head(MyBlast$hit.tbl)
top.hits <- plot(MyBlast) 
head(top.hits$hits) 
