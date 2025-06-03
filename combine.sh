#!/bin/bash

# Output file name
output_file="config.yaml"

# Start the output YAML file with the root key
echo "items:" > "$output_file"

# Loop through all .yaml files in the current directory
for yaml_file in *.yaml; do
  # Skip if no YAML files are found
  if [ ! -f "$yaml_file" ]; then
    echo "No YAML files found in the current directory."
    exit 1
  fi

  # Append each file's content as an array item
  echo "- |" >> "$output_file"
  sed 's/^/  /' "$yaml_file" >> "$output_file"
done

# Confirmation message
echo "All YAML files have been combined into $output_file"
