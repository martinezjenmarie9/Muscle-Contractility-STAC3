# Molecular Mechanisms of Muscle Contractility

## A. Assignment Information

* **Assignment number:** 29

* **Gene:** STAC3

* **Official name:** SH3 and cysteine rich domain 3

* **Gene symbol:** STAC3
  
* **NCBI Gene ID:** 246329

* **Chromosome:** 12

* **Transcript accession:** NM_145064.3

* **Variant:** NM_145064.3.763_766del

* **Protein change:** p.Leu255fs

* **ClinVar Variation ID:** 559850

* **Protein accession:** NP_659501.1

* **Variant type:** Frameshift

* **HGVS Change**: 
  * Nucleotide: c.763_766del
  * Protein: p.Leu255fs
* **Variant Type & Length**: Microsatellite, 4 bp deletion
* **Condition**: Bailey-Bloch congenital myopathy
* **Aggregate Classification**: Pathogenic
* **Review Status**: 2 gold stars
* **Last Evaluated**: July 27, 2025
* **Date Accessed**: October 27, 2026
* **Submitter**: Labcorp Genetics (formerly Invitae)
* **Supporting Publications**: PubMed: 26411587, 28777431
 
## B. Research Question

How might the STAC3 frameshift variant c.763_766del affect the STAC3 protein and contribute to disease?

## C. Methods

1. **Project Setup:** Created an RStudio project folder named `Muscle_Contractility_STAC3` with `data`, `results`, and `figures` subfolders. Installed and loaded the `rentrez` and `ggplot2` packages.

2. **Gene Retrieval:** Used the `rentrez` package to search NCBI Gene for the human STAC3 gene. Recorded its Gene ID, official name, and chromosome in `results/gene_summary.txt`.

3. **Protein Sequence Retrieval:** Retrieved the assigned transcript `NM_145064.3` from NCBI Nucleotide and extracted its matching RefSeq protein accession. Downloaded the protein FASTA sequence and saved it in the `data` folder.

4. **Protein Analysis:** Used R to calculate the reference protein length and count the 20 standard amino acids. Saved the amino-acid frequency table as a CSV file and created a bar chart using `ggplot2`.

5. **Variant Review:** Examined ClinVar variation 559850 to document the STAC3 variant `c.763_766del (p.Leu255fs)`, its clinical classification, associated condition, and supporting evidence.

6. **Biological Visualization:** Created a linear protein map showing the reference protein length and the variant position at amino acid 255. Saved the figure as a PNG file without assuming a confirmed shortened protein length.

7. **Interpretation and Validation:** Reviewed the normal function of STAC3 and the predicted molecular effects of the frameshift variant. Proposed a laboratory experiment to investigate its effects on protein production or function.

8. **Documentation and Reproducibility:** Saved the R script, protein sequence, analysis results, and figures in their respective folders. Documented the methods, corrected coding errors, database links, accession versions, access dates, limitations, and references in `README.md` and uploaded the project to GitHub.

## D. Results and Figure

**Figure 1. STAC3 amino acid composition**


File: [figures/01_amino_acid_composition.png](https://github.com/martinezjenmarie9/Muscle-Contractility-STAC3/blob/main/figure/01_amino_acid_composition.png)

The figure summarizes the number of occurrences of each standard amino acid in the reference STAC3 protein sequence.


**Figure 2. Variant Position**

File: [figures/02_variant_position](https://github.com/martinezjenmarie9/Muscle-Contractility-STAC3/blob/main/figure/02_variant_position.png)

The STAC3 variant's location was identified from its HGVS notation. A separate variant-position image was not included because it was not applicable to this analysis.

**Figure 3. Protein Structure**

File: [protein_structure_or_splice_diagram](https://github.com/martinezjenmarie9/Muscle-Contractility-STAC3/blob/main/figure/protein_structure_or_splice_diagram.png)

The UniProt protein feature diagram shows the functional regions of STAC3, helping illustrate its organization and role in skeletal muscle function.

### Output Files

- [analysis.R](https://github.com/martinezjenmarie9/Muscle-Contractility-STAC3/tree/main/analysis.R) — R script used for the analysis
- [data/STAC3_protein.fasta](https://github.com/martinezjenmarie9/Muscle-Contractility-STAC3/blob/main/data/STAC3_protein.fasta) — Reference protein sequence
- [results/amino_acid_composition.csv](https://github.com/martinezjenmarie9/Muscle-Contractility-STAC3/blob/main/result/amino_acid_composition.csv) — Amino acid counts
- [results/gene_summary.txt](https://github.com/martinezjenmarie9/Muscle-Contractility-STAC3/blob/main/result/gene_summary.txt) — Protein summary
- [results/protein_accession.txt](https://github.com/martinezjenmarie9/Muscle-Contractility-STAC3/blob/main/result/protein_accession.txt) – The STAC3 reference protein accession is NP_659501.1, which identifies the protein sequence retrieved from NCBI and used for the amino acid composition analysis.

## E. Variant Interpretation
The STAC3 c.763_766del variant removes four nucleotides from the coding sequence, causing a frameshift beginning at leucine 255. The altered reading frame is predicted to introduce a premature stop signal, which may result in a shortened or disrupted protein.

Normally, STAC3 helps DHPR/CaV1.1 and RYR1 coordinate calcium release in skeletal muscle. This process allows actin and myosin to interact and produce muscle contraction. If the STAC3 protein is disrupted, calcium release and normal muscle contraction may be affected, potentially contributing to muscle weakness.

ClinVar classifies this variant as pathogenic and associates it with Bailey-Bloch congenital myopathy. This supports its clinical importance, although the exact molecular effect of this specific variant requires further experimental confirmation.

## F. Limitations and Possible Validation
This analysis relies mainly on existing database records and a predicted protein consequence. It does not directly measure STAC3 protein production, RNA processing, or muscle function. A predicted effect does not prove the exact molecular outcome in every cell.

A possible validation experiment would be to introduce the variant into an appropriate laboratory cell model and compare it with a matched normal STAC3 control. STAC3 protein abundance and size could be examined using Western blotting. RNA analysis could also help investigate transcript stability and possible effects on splicing.

These experiments would help determine whether the variant affects protein production and whether the observed effects agree with the database prediction.

## Questions to answer 

* **1. What does STAC3 encode, and how does it contribute to muscle function?**
  
The STAC3 gene encodes the STAC3 protein, which is  involved in skeletal muscle excitation–contraction coupling. It helps DHPR/CaV1.1 and RYR1 coordinate calcium release inside muscle cells, allowing muscle contraction to begin.

* **2. What protein accession and length were retrieved using R?**
  
The reference protein accession is NP_659501.1, and the protein contains 364 amino acids. The accession identifies the specific reference protein sequence used in the analysis.

* **3. What did the amino acid composition chart show, and what can it not tell us?**
  
The chart shows how many times each of the 20 standard amino acids appears in the STAC3 reference protein. It describes the protein's composition but cannot show the protein's three-dimensional shape, activity, or the actual effects of the variant.

* **4. What is the fixed ClinVar variant, its classification, and evidence strength?**
  
The assigned variant is STAC3 c.763_766del (p.Leu255fs), ClinVar Variation ID 559850. It is a four-base-pair deletion that causes a frameshift. The associated condition is Bailey-Bloch congenital myopathy. ClinVar classifies the variant as pathogenic, with a review status of 2 gold stars, indicating that the classification has criteria provided by multiple submitters with no conflicts in their interpretations. The record was last evaluated on July 27, 2025, and lists Labcorp Genetics (formerly Invitae) as the submitter. Supporting publications include PubMed IDs 26411587 and 28777431.

* **5. What is the proposed mechanism, and what remains uncertain?**
The four-nucleotide deletion causes a frameshift and is predicted to introduce a premature stop signal, potentially producing an absent or disrupted STAC3 protein. Reduced STAC3 function may interfere with calcium release in skeletal muscle and contribute to muscle weakness. However, the exact effect of this specific variant on protein production and calcium release has not been fully established experimentally.

* **6. What experiment could test the proposed mechanism?**
  
A possible experiment would be to introduce the STAC3 variant into a suitable laboratory cell model and compare it with a matched control containing normal STAC3. Western blotting could measure the protein's amount and size, while RNA analysis could examine transcript stability and possible changes in splicing.
These experiments would help determine whether the variant affects STAC3 protein production and whether the results support the predicted molecular effect.

## Reference databases and troubleshooting

National Center for Biotechnology Information. (n.d.). *Bailey-Bloch congenital myopathy (CMYO13).* NCBI MedGen. https://www.ncbi.nlm.nih.gov/medgen/C1850625/

Polster, A., Nelson, B. R., Olson, E. N., & Beam, K. G. (2016). Stac3 has a direct role in skeletal muscle-type excitation–contraction coupling that is disrupted by a myopathy-causing mutation. Proceedings of the National Academy of Sciences, 113(39), 10986–10991. https://doi.org/10.1073/pnas.1612441113

**NCBI Gene:** https://www.ncbi.nlm.nih.gov/gene/

**NCBI Protein:** 
https://www.ncbi.nlm.nih.gov/protein/NCBI

**Nucleotide (RefSeq NM_):** https://www.ncbi.nlm.nih.gov/nuccore/

**NCBI ClinVar:** https://www.ncbi.nlm.nih.gov/clinvar/

**UniProt:** https://www.uniprot.org/

**RCSB PDB:** https://www.rcsb.org/

**AlphaFold DB:** https://alphafold.ebi.ac.uk/

**rentrez R documentation:** https://docs.ropensci.org/rentrez/

**Variant-list cross-check source:** https://www.sugi.bio/atlas/gene/GENE/ 
