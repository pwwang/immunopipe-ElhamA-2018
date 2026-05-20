#!/usr/bin/env bash

# The URL to the tar file
DATAURL="https://ftp.ncbi.nlm.nih.gov/geo/series/GSE114nnn/GSE114724/suppl/GSE114724_RAW.tar"
# DATASHA="8aebf418433603d710df0c3652c616719f8d21c0"
DATAFILE="prepared-data/GSE114724.tar"

echo "- Make the directory for prepared data ..."
mkdir -p prepared-data

echo "- Download the data if needed ..."
# if [ ! -e $DATAFILE ] || [ "$(shasum $DATAFILE | cut -d' ' -f1)" != "$DATASHA" ]; then
if [ ! -e $DATAFILE ]; then
    wget -O $DATAFILE $DATAURL
fi

echo "- Extract the data ..."
tar -xvf $DATAFILE --directory=./prepared-data

echo "- Separate desired samples ..."
for sample in $(ls -1b prepared-data/*.gz | xargs -n 1 basename | cut -d_ -f2,3 | sort -u); do
    mkdir -p prepared-data/${sample^^}
    mv prepared-data/*_${sample}_*.gz prepared-data/${sample^^}/
done

echo "- Remove unnecessary files ..."
rm -rf prepared-data/*.gz

echo "- Done!"
