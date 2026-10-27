
The results were obtained using RStudio and information from public genetic databases, including NCBI and ClinVar. The selected gene, STAC3, and its variant were identified, and the reference protein sequence was used to analyze the protein's amino acid composition. The results were saved in the results folder, while the generated graph was saved in the figures folder.

## Amino Acid Composition

The amino acid composition image is a bar graph showing how many times each of the 20 standard amino acids appears in the STAC3 reference protein sequence. The image was created using RStudio. The protein sequence was obtained from NCBI and saved as a FASTA file. The R script counted each amino acid using the sequence and used the ggplot2 package to create the bar graph. 
The graph helps describe the composition of the STAC3 protein by showing which amino acids occur more or less frequently. However, it does not directly show the effects of the selected variant.

## Variant Position

Variant position refers to the location in a gene or protein where a genetic change occurs. For the selected STAC3 variant, c.763_766del, four nucleotides are deleted from the coding DNA sequence. Its predicted protein consequence, p.Leu255fs, indicates that the frameshift begins at amino acid position 255, where leucine (Leu) is affected.

Although the variant's position can be identified from this information, a variant-position figure was not included in this analysis because it was considered not applicable to the selected results. The project instead focuses on the reference STAC3 protein sequence and its amino acid composition.

## Functional-Domain Illustration

The STAC3 functional-domain illustration was obtained from UniProt, which provides information about protein sequences and annotated features. The illustration shows the organization of the STAC3 protein and its functional regions. It was saved in the figures folder for reference.

The variant position was not marked because the illustration was not used to confirm the exact location of the variant within the displayed protein features.
