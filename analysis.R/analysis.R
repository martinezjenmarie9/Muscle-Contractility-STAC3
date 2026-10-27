
# Assignment information: STAC3
gene_symbol <- "STAC3"
transcript_accession <- "NM_145064.3"
clinvar_id <- "559850"
variant_protein <- "p.Leu255fs"

# Create the required folders
for (x in c("data", "results", "figures")) {
  dir.create(x, showWarnings = FALSE)
}




hits <- entrez_search(
  db = "gene",
  term = paste0("STAC3[Gene Name] AND txid9606[Organism]"),
  retmax = 20
)

if (length(hits$ids) == 0) stop("Gene not found")

# Verify the exact gene symbol
gene_id <- NA_character_

for (id in hits$ids) {
  rec <- entrez_summary(db = "gene", id = id)
  
  if (toupper(rec$name) == "STAC3") {
    gene_id <- id
    gene_info <- rec
    break
  }
}

if (is.na(gene_id)) stop("Exact human gene not found")

print(gene_info)

writeLines(c(
  paste("Gene symbol:", gene_info$name),
  paste("NCBI Gene ID:", gene_id),
  paste("Official name:", gene_info$description),
  paste("Chromosome:", gene_info$chromosome)
), "results/gene_summary.txt")



gb <- entrez_fetch(
  db = "nuccore",
  id = transcript_accession,
  rettype = "gb",
  retmode = "text"
)

pat <- '/protein_id="NP_[0-9]+[.][0-9]+"'

fragment <- regmatches(gb, regexpr(pat, gb))

if (length(fragment) == 0 || fragment == "") {
  stop("NP protein ID not found; inspect the transcript record")
}

protein_accession <- gsub('^/protein_id="|"$', '', fragment)

protein_fasta <- entrez_fetch(
  db = "protein",
  id = protein_accession,
  rettype = "fasta",
  retmode = "text"
)

if (!startsWith(protein_fasta, ">")) {
  stop("Invalid FASTA")
}

fasta_file <- file.path(
  "data",
  paste0(gene_symbol, "_protein.fasta")
)

writeLines(protein_fasta, fasta_file)

cat("Matched protein:", protein_accession, "\n")

writeLines(
  paste("NP accession:", protein_accession),
  "results/protein_accession.txt"
)



fasta_lines <- readLines(fasta_file)
sequence <- paste(fasta_lines[!grepl("^>", fasta_lines)], collapse = "")
aa <- strsplit(toupper(sequence), "")[[1]]
protein_length <- length(aa)
standard <- strsplit("ACDEFGHIKLMNPQRSTVWY", "")[[1]]
counts <- table(factor(aa, levels = standard))
results <- data.frame(AminoAcid = standard, Count = as.integer(counts))
write.csv(results, "results/amino_acid_composition.csv", row.names = FALSE)
cat("Protein length:", protein_length, "amino acids\n")
print(head(results[order(-results$Count), ], 3))
fig1 <- ggplot(results, aes(AminoAcid, Count)) +
  geom_col(fill = "grey45") + theme_bw() +
  labs(title = paste(gene_symbol, "amino-acid composition"), x = "Amino acid", y = "Number of residues")
print(fig1)
ggsave("figures/01_amino_acid_composition.png", fig1, width = 8, height = 5, dpi = 300)