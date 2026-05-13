# RNA-seq Pipeline

End-to-end RNA-seq analysis pipeline built in Linux for transcriptomic data processing and differential expression analysis.

## Overview

This project implements a complete RNA-seq workflow starting from raw FASTQ files through alignment and downstream expression analysis.

The pipeline includes:

- Quality control
- Read repair
- Adapter trimming
- Genome alignment
- BAM processing
- Gene quantification
- Differential expression analysis

---

## Workflow

FASTQ → QC → trimming → alignment → BAM → counts → DE analysis

---

## Tools Used

- FastQC
- BBTools
- FastP
- HISAT2
- SAMtools
- featureCounts
- R / DESeq2
- Bash
- Git / GitHub

---

## Project Structure

rna-seq-pipeline/

├── data/                  # raw FASTQ files

├── genome/                # reference genome and HISAT2 index

├── results/

│   ├── qc/                # FastQC and FastP reports

│   ├── trimmed/           # trimmed FASTQ files

│   ├── alignment/         # BAM alignment files

│   ├── counts/            # featureCounts output

│   └── figures/           # plots and visualizations

├── scripts/

│   ├── 01_download_data.sh

│   ├── 02_repair_pairs.sh

│   ├── 03_qc_trim.sh

│   ├── 04_alignment.sh

│   └── 05_counts.sh

├── README.md

└── .gitignore

---

## Dataset

Educational RNA-seq paired-end dataset used for pipeline development and practice.

Dataset source:
https://github.com/josoga2/yt-dataset

---

## Pipeline Steps

### 1. Download raw RNA-seq reads

Downloads paired-end FASTQ files into the `data/` directory.

### 2. Repair paired-end reads

Uses BBTools `repair.sh` to synchronize paired-end reads before downstream analysis.

### 3. Quality control and trimming

- FastQC for sequencing quality assessment
- FastP for adapter trimming and filtering

### 4. Genome alignment

Reads are aligned against the human GRCh38 reference genome using HISAT2.

### 5. BAM processing

SAMtools is used for:

- BAM conversion
- sorting
- indexing

### 6. Gene quantification

featureCounts generates gene-level count matrices for downstream analysis.

### 7. Differential expression analysis

DESeq2 in R is used for:

- normalization
- statistical testing
- visualization

---

## Planned Downstream Analyses

- Differential gene expression analysis using DESeq2
- Volcano plots
- PCA plots

---

## Future Improvements

- Snakemake workflow automation
- Docker containerization
- MultiQC integration
- Cloud/HPC execution

---

## Author

Paula

