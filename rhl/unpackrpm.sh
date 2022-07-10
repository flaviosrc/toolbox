#!/bin/sh

rpm_path=$1
dir_path=$2

mkdir $dir_path

rpm2cpio $rpm_path | cpio -idmv $dir_path

# -i, --extract Extract files from an archive
# -d, --make-directories Create leading directories where needed
# -m, --preserve-modification-time Retain previous file modification times when creating files
# -v, verbose
# cpio --help for more details