### How the Results Were Obtained

The results were obtained using RStudio and information from public genetic databases, including NCBI and ClinVar. The STAC3 gene and its selected variant were identified, and the reference protein sequence was retrieved and saved in FASTA format. R was then used to examine the protein sequence, calculate its amino acid composition, and save the results in the `results` folder. 

### 1. Gene Summary

The gene summary provides basic information about the STAC3 gene, including its name, function, selected transcript, and variant information. STAC3 helps support normal skeletal muscle excitation-contraction coupling, the process that allows muscle cells to respond to signals and contract.

This summary helps explain the role of the gene and why changes in its sequence may be important.


### 2. Protein Accession

A protein accession is a unique identifier assigned to a protein record in a database such as NCBI. It allows the reference protein sequence used in the analysis to be identified and retrieved.

The protein accession helps ensure that the correct reference sequence is used when analyzing the STAC3 protein.



### 3. Amino Acid Composition

Amino acid composition describes the types of amino acids present in a protein and how many times each type occurs in its sequence. Proteins are made from amino acids arranged in a specific order.

The R script reads the STAC3 protein sequence from the FASTA file and counts the occurrences of the 20 standard amino acids. The counts are saved in a CSV file and used to create a bar graph.

This analysis describes the composition of the reference protein. It does not directly show how the selected variant changes the protein.

