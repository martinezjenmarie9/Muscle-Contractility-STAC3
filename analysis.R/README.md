### R Analysis Script

The `analysis.R` file contains the R code used to perform the STAC3 gene and protein analysis. It reads the reference protein sequence from the FASTA file in the data folder, calculates the protein length, counts the occurrences of each of the 20 standard amino acids, and organizes the results into a table.

The script also uses the ggplot2 package to generate a bar graph showing the amino acid composition. The output files are saved in the appropriate results and figures folders.

This script makes the analysis easier to repeat because the results and figure can be generated again by running the code in RStudio.
