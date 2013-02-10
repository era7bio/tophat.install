#!/bin/sh
set -e -x

# depends on
# samtools, boost, bowtie

# installer for tophat
#
# create your base folder
mkdir -p /opt/tophat
cd /opt/tophat
# do the work
wget http://tophat.cbcb.umd.edu/downloads/tophat-2.0.7.Linux_x86_64.tar.gz
tar -xzf tophat-2.0.7.Linux_x86_64.tar.gz
cd tophat-2.0.7.Linux_x86_64

# copy bins
cp fix_map_ordering prep_reads tophat2 bam2fastx gtf_juncs \
  tophat-fusion-post bam_merge gtf_to_fasta sam_juncs tophat_reports \
  bed_to_juncs juncs_db segment_juncs contig_to_chr_coords \
  long_spanning_reads sra_to_solid map2gtf tophat \
  /usr/bin
