#!/bin/bash

# =========================
# REPAIR PAIRED-END READS
# =========================

set -e

echo "Checking and repairing paired-end FASTQ files..."

mkdir -p data

# (opcional pero recomendado) instalar bbtools si no existe
# conda install -c bioconda bbtools -y

repair.sh \
in1=data/ACBarrie_R1.fastq.gz \
in2=data/ACBarrie_R2.fastq.gz \
out1=data/R1.fixed.fastq.gz \
out2=data/R2.fixed.fastq.gz \
outs=data/unpaired.fastq.gz

echo "Repair completed:"
echo " - R1.fixed.fastq.gz"
echo " - R2.fixed.fastq.gz"
echo " - unpaired.fastq.gz"
