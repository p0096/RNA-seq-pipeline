# RNA-seq Pipeline

End-to-end RNA-seq analysis pipeline using:

- FastQC
- FastP
- HISAT2
- samtools
- featureCounts
- DESeq2

## Workflow

FASTQ → QC → trimming → alignment → BAM → counts → DE analysis

## Tools

- FastQC
- FastP
- HISAT2
- samtools
- R / DESeq2

## Structure

rna-seq-pipeline/
├── data/                 # raw FASTQ
├── genome/              # genome + HISAT2 index
├── results/
│   ├── qc/
│   ├── trimmed/
│   ├── alignment/
│   └── counts/         # (featureCounts)
├── scripts/
│   ├── 01_download_data.sh
│   ├── 02_qc_and_trim.sh
│   ├── 03_alignment.sh
│   └── 04_counts.sh
├── README.md
└── .gitignore

## Notes

Educational RNA-seq dataset used for pipeline practice.


## Author

Paula

