#!/bin/bash

# Brian Rezende
# brezende@dons.usfca.edu
# November 30, 2018


# Script to pull data from NCBI
# It runs a pipeline to extract fastq files and then run through QC checks,
# trimming, and BLASTING

for SRA_number in $(cut -f 9 data/metadata/SraRunTable.txt)
do
  /Users/brezende2015/sratoolkit.2.9.2-mac64/bin/fastq-dump.2.9.2 -v \
  "$SRA_number" -O data/raw_data
done
