#!/bin/bash

set -e

mkdir -p results/qc results/trimmed

echo "Running FastQC..."

fastqc data/*.fastq.gz -o results/qc

echo "Running FastP..."

# Using repaired paired-end reads from BBTools step

fastp \
  -i data/R1.fixed.fastq.gz \
  -I data/R2.fixed.fastq.gz \
  -o results/trimmed/R1.trim.fastq.gz \
  -O results/trimmed/R2.trim.fastq.gz \
  -h results/qc/fastp.html \
  -j results/qc/fastp.json \
  --detect_adapter_for_pe \
  --thread 4

echo "QC + trimming done"
