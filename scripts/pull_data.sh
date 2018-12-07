#!/bin/bash

# Brian Rezende
# brezende@dons.usfca.edu
# November 30, 2018

# Script to pull data from NCBI
# It runs a pipeline to extract fastq files and then run through QC checks,
# trimming, and BLASTING

# We are cutting out the 9th column because it contains the SRA numbers that
# fastq dump needs to download
for SRA_number in "$(cut -f 9 data/metadata/SraRunTable.txt)"
do 
  # We use the full path because fastq dump is not installed in our normal path
  /Users/brezende2015/sratoolkit.2.9.2-mac64/bin/fastq-dump.2.9.2 -v \
  "$SRA_number" -O data/raw_data 
done
