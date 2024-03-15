#!/usr/bin/env bash
set -eu

INFEED="public/gemlog/atom.xml"
OUTFEED="public/gemlog/atom-https.xml"

# read INFILE, replace gemini:// with https:// and write to OUTFILE
sed 's/gemini:\/\//https:\/\//g' $INFEED > $OUTFEED
