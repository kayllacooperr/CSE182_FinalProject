#!/bin/bash

# Step 1: Download and prepare the CCND2 protein sequence (Cyclin D2)
# manually downloaded from this link:
# https://www.ncbi.nlm.nih.gov/protein/NP_001750.1
# saved as filename: ccnd2_protein.fasta

# Step 2: Download the hg19 reference genome
curl -O http://hgdownload.soe.ucsc.edu/goldenPath/hg19/bigZips/hg19.fa.gz
gunzip hg19.fa.gz

# Step 3: Get the ecDNA genomic region from the BED file
# Need to manually replace the '12's in the BED file to use 'chr12' instead to be compatible with the hg19 genome
# Extract the FASTA sequence from hg19 with the BED coordinates
bedtools getfasta -fi hg19.fa -bed ecDNA_amplicon5.bed -fo ecDNA_region.fa

# Step 4: Run tblastn, align the protein query and DNA region
tblastn -query ccnd2_protein.fasta -subject ecDNA_region.fa -out ccnd2_tblastn.txt -outfmt 6
