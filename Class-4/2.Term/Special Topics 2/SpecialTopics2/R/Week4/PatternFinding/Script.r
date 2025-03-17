library(Biostrings)

mynucleotide <- DNAString("aacataatgcagtagaacccatgagccc")

matchPattern(DNAString("ATG"), mynucleotide)

matchPattern("TAA", mynucleotide)


myCodonFinder <- function(sequence){
  startCodon = DNAString("ATG") # Assign start codons
  stopCodons = list("TAA", "TAG", "TGA") # Assign stop codons
  codonPosition = list() #initialize the output to be returned as a list
  codonPosition$Start = matchPattern(startCodon, sequence) #search start codons
  x=list()
  for(i in 1:3){ # iterate over all stop codons
    x[[i]]= matchPattern(DNAString (stopCodons[[i]]), sequence)
    codonPosition$Stop=x
  }
  return(codonPosition) # returns results
}

StartStops <- myCodonFinder(mynucleotide)

StartStops

