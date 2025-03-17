install.packages("seqinr")
library(seqinr)

setwd("F:\\Dropbox\\University\\BioInformatics\\Slides\\R\\Week3\\FastaFiles")

mysequence <- read.fasta(file = "data1.fasta")
names<-getName(mysequence)
names

mysequence2 <- read.fasta(file = "data2.fasta")
names2<-getName(mysequence2)
names2

length(names2)

write.fasta(mysequence2,names2, file.out = "data2Copy.fasta")

#details of sequences
myseq <- "AAAATGCAGTAACCCATGCCAAAATGCAGTAA"
myseq <- strsplit(myseq, "")
myseq <- unlist(myseq)

#help(unlist)

table(myseq)

GC(myseq)

myseq <- s2c("atgcgcgtatagcgtagtacgcgcgcgatatg")
seqinr::count(myseq, wordsize=2)

