#!/bin/bash

# Download raw RNA-seq data (FASTQ)

set -e

mkdir -p data

cd data

wget -nc https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/ACBarrie_R1.fastq.gz
wget -nc https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/ACBarrie_R2.fastq.gz

echo "FASTQ download completed"
