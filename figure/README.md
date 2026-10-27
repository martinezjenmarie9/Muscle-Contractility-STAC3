
The results were obtained using RStudio and information from public genetic databases, including NCBI and ClinVar. The selected gene, STAC3, and its variant were identified, and the reference protein sequence was used to analyze the protein's amino acid composition. The results were saved in the results folder, while the generated graph was saved in the figures folder.

## Amino Acid Composition

The amino acid composition image is a bar graph showing how many times each of the 20 standard amino acids appears in the STAC3 reference protein sequence. The image was created using RStudio. The protein sequence was obtained from NCBI and saved as a FASTA file. The R script counted each amino acid using the sequence and used the ggplot2 package to create the bar graph. 
The graph helps describe the composition of the STAC3 protein by showing which amino acids occur more or less frequently. However, it does not directly show the effects of the selected variant.

## Variant Position

A variant-position figure was not included because it was considered not applicable to this analysis. The results focus on the amino acid composition of the reference STAC3 protein rather than a visual map of the variant's location.
