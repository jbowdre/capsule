#!/usr/bin/env bash

input_dir="$1"
output_dir="$2"

# Iterate over .md files in input directory
for file in "$input_dir"/*.md; do
  file=$(basename "$file")
  echo "Processing file: $file"

  # Extract frontmatter and dump it to YAML file
  echo "id: \"urn:uuid:$(uuidgen)\"" > "$output_dir/${file%.md}.yaml"
  awk '/^---$/{if(seen){exit}else{seen=1;next}} seen' "$input_dir/$file" >> "$output_dir/${file%.md}.yaml"
  echo "Wrote frontmatter to file: $output_dir/${file%.md}.yaml"

  # Remove HTML tags, including those which may span multiple lines
  if awk -v RS='^$' -v ORS='' '{gsub(/<[^>]*>/, ""); print}' "$input_dir/$file" > "$input_dir/tmp.md"; then
    mv "$input_dir/tmp.md" "$input_dir/$file"
  fi

  # Convert Markdown to GMI
  /usr/local/bin/md2gmi -i "$input_dir/$file" -o "$output_dir/${file%.md}.gmi"
  echo "Wrote file: $output_dir/${file%.md}.gmi"
done
