# Molecular Mechanisms of Muscle Contractility

## A. Assignment Information

* **Assignment number:** 29

* **Gene:** STAC3

* **Gene symbol:** STAC3
  
* **NCBI Gene ID:** 246329

* **Official name:** SH3 and cysteine rich domain 3

* **Chromosome:** 12

* **Transcript accession:** NM_145064.3

* **Variant:** NM_145064.3.763_766del

* **Protein change:** p.Leu255fs

* **ClinVar Variation ID:** 559850

* **Protein accession:** NP_659501.1

* **Variant type:** Frameshift

## B. Research Question

How might the STAC3 frameshift variant c.763_766del affect the STAC3 protein and contribute to disease?

## Methods

1. **Project Setup:** Created an RStudio project folder named `Muscle_Contractility_STAC3` with `data`, `results`, and `figures` subfolders. Installed and loaded the `rentrez` and `ggplot2` packages.

2. **Gene Retrieval:** Used the `rentrez` package to search NCBI Gene for the human STAC3 gene. Recorded its Gene ID, official name, and chromosome in `results/gene_summary.txt`.

3. **Protein Sequence Retrieval:** Retrieved the assigned transcript `NM_145064.3` from NCBI Nucleotide and extracted its matching RefSeq protein accession. Downloaded the protein FASTA sequence and saved it in the `data` folder.

4. **Protein Analysis:** Used R to calculate the reference protein length and count the 20 standard amino acids. Saved the amino-acid frequency table as a CSV file and created a bar chart using `ggplot2`.

5. **Variant Review:** Examined ClinVar variation 559850 to document the STAC3 variant `c.763_766del (p.Leu255fs)`, its clinical classification, associated condition, and supporting evidence.

6. **Biological Visualization:** Created a linear protein map showing the reference protein length and the variant position at amino acid 255. Saved the figure as a PNG file without assuming a confirmed shortened protein length.

7. **Interpretation and Validation:** Reviewed the normal function of STAC3 and the predicted molecular effects of the frameshift variant. Proposed a laboratory experiment to investigate its effects on protein production or function.

8. **Documentation and Reproducibility:** Saved the R script, protein sequence, analysis results, and figures in their respective folders. Documented the methods, corrected coding errors, database links, accession versions, access dates, limitations, and references in `README.md` and uploaded the project to GitHub.

## Figure

**Figure 1. STAC3 amino acid composition**

File: `figures/01_amino_acid_composition.png`

The figure summarizes the number of occurrences of each standard amino acid in the reference STAC3 protein sequence.

### Output Files

- `analysis.R` — R script used for the analysis
- `data/STAC3_protein.fasta` — Reference protein sequence
- `results/amino_acid_composition.csv` — Amino acid counts
- `results/protein_summary.txt` — Protein summary
- `figures/01_amino_acid_composition.png` — Amino acid composition figure
