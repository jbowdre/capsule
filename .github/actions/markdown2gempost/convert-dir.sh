#!/usr/bin/env bash

# Throw error if required paths are not provided
if [ $# -ne 3 ]; then
  echo "Usage: $0 <input_dir> <output_dir> <processed_dir>"
  exit 1
fi

# strip trailing slashes from input and output directories
input_dir="${1%/}"
output_dir="${2%/}"
processed_dir="${3%/}"

# Find all .md files and check if the array is empty
mapfile -t md_files < <(find "$input_dir" -type f -name "*.md")
if [ ${#md_files[@]} -eq 0 ]; then
  echo "No Markdown files to process."
  exit 0
fi

# Iterate over .md files in input directory
for file in "$input_dir"/*.md; do
  file=$(basename "$file")

  # Extract frontmatter and dump it to YAML file
  echo "id: \"urn:uuid:$(uuidgen)\"" > "$output_dir/${file%.md}.yaml"
  awk '/^---$/{if(seen){exit}else{seen=1;next}} seen' "$input_dir/$file" >> "$output_dir/${file%.md}.yaml"
  echo "Wrote frontmatter file: $output_dir/${file%.md}.yaml"

  # Check for HTML tags
  if grep -q '<[^>]*>' "$input_dir/$file"; then
    # Remove HTML tags, including those which may span multiple lines
    if awk -v RS='^$' -v ORS='' '{gsub(/<[^>]*>/, ""); print}' "$input_dir/$file" > "$input_dir/tmp.md"; then
      mv "$input_dir/tmp.md" "$input_dir/$file"
    fi
  fi

  # Remove empty/trailing spaces
  sed -i 's/[ \t]*$//' "$input_dir/$file"

  # Convert Markdown to GMI
  /usr/local/bin/md2gmi -i "$input_dir/$file" -o "$output_dir/${file%.md}.gmi"
  # Remove first line (and blank lines which follow) from output file (gempost will render the title)
  if awk 'NR == 1 {next} NF == 0 && !p {next} {p=1; print}' "$output_dir/${file%.md}.gmi" > "$output_dir/tmp.gmi"; then
    mv "$output_dir/tmp.gmi" "$output_dir/${file%.md}.gmi"
  fi

  echo "Wrote gemtext file: $output_dir/${file%.md}.gmi"

  # Move original Markdown file to processed directory
  mv "$input_dir/$file" "$processed_dir/$file"
done
