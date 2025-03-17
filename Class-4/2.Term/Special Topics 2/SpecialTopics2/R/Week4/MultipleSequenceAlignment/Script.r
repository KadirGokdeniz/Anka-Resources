if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("msa")

library(msa)


setwd("F:\\Dropbox\\University\\BioInformatics\\Slides\\R\\Week4\\MultipleSequenceAlignment")

mySequences <- readAAStringSet("fastaMSA.fasta")
mySequences

help(msa)
myalignment<-msa(mySequences, "Muscle")


print(myalignment, show="complete")

tmpFile <- tempfile(pattern="msa", tmpdir=".", fileext=".pdf")
tmpFile
msaPrettyPrint(myalignment, file=tmpFile, output="pdf",
               showNames="left", showNumbering="none", showLogo="top",
               showConsensus="bottom", logoColors="rasmol",
               verbose=FALSE, askForOverwrite=FALSE)
# following this function call, build the tex file in TexStudio

# shows the location of the texshade.sty in local storage
system.file("tex", "texshade.sty", package="msa")


