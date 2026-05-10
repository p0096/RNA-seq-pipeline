#!/bin/bash

set -e

mkdir -p results/alignment

echo "Running HISAT2..."

hisat2 \
  -p 4 \
  -x genome/grch38/genome \
  -1 results/trimmed/R1.trim.fastq.gz \
  -2 results/trimmed/R2.trim.fastq.gz \
  -S results/alignment/alignment.sam

echo "Converting to BAM..."

samtools view -bS results/alignment/alignment.sam > results/alignment/alignment.bam

samtools sort results/alignment/alignment.bam -o results/alignment/alignment.sorted.bam

samtools index results/alignment/alignment.sorted.bam

echo "Alignment done"
