#!/usr/bin/env bash
set -eu

INFEED="public/gemlog/atom.xml"
OUTFEED="public/gemlog/atom-web.xml"

# read INFILE, replace gemini:// with https:// and write to OUTFILE
sed 's/gemini:\/\//https:\/\//g' $INFEED > $OUTFEED
# fix self url
sed -i 's/atom\.xml/atom-web\.xml/g' $OUTFEED