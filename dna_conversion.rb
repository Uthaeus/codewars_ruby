# Create a funciton which translates a given DNA string into RNA.

# For example:

# DNAtoRNA("GCAT") returns ("GCAU")


def DNAtoRNA(dna)
  rna = dna.gsub('T', 'U')

  rna 
end



p DNAtoRNA("GACCGCCGCC") #, "GACCGCCGCC"
p DNAtoRNA("GCAT") #, "GCAU"