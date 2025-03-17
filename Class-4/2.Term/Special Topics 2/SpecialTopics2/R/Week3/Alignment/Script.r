source("http://bioconductor.org/biocLite.R")
biocLite("Biostrings")
library(Biostrings)

sequence1 <- "GAATTCGGCTA"
sequence2 <- "GATTACCTA"

myScoringMat <- nucleotideSubstitutionMatrix(match = 1, mismatch = -1, baseOnly = TRUE)
myScoringMat

gapOpen <- 2
gapExtend <- 1

myAlignment <- pairwiseAlignment(sequence1, sequence2,
                                 substitutionMatrix = myScoringMat, gapOpening = gapOpen,
                                 gapExtension = gapExtend, type="global", scoreOnly = FALSE)
myAlignment

myAlignment <- pairwiseAlignment(sequence1, sequence2,
                                 substitutionMatrix = myScoringMat, gapOpening = gapOpen,
                                 gapExtension = gapExtend, type="local", scoreOnly = FALSE)
myAlignment



# dot plot from fasta files
setwd("F:\\Dropbox\\University\\BioInformatics\\Slides\\R\\Week3\\Alignment")

library(seqinr)

mysequence <- read.fasta(file = "data3.fasta")
names<-getName(mysequence)
names

dotPlot(mysequence[[1]], mysequence[[2]], col=c("white", "red"), xlab=names[1],ylab=names[2])


