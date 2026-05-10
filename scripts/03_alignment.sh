#!/bin/bash

set -euo pipefail

mkdir -p results/alignment

echo "Starting HISAT2 alignment"

hisat2 \
  -p 4 \
  -x genome/grch38/genome \
  -1 results/trimmed/R1.trim.fastq.gz \
  -2 results/trimmed/R2.trim.fastq.gz \
| samtools view -bS - \
| samtools sort -o results/alignment/alignment.sorted.bam

samtools index results/alignment/alignment.sorted.bam

echo "Alignment completed successfully"
