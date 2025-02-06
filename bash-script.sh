#!/bin/bash

# Define the GitHub repository URL
REPO_URL="https://github.com/MBBmisau/group5.git"

# Define the directory name (extracted from repo name)
REPO_DIR="group5"

# Define the output CSV file
OUTPUT_FILE="output.csv"

# Clone the repository
git clone "$REPO_URL"

# Navigate into the cloned repository
cd "$REPO_DIR" || exit

# Create the CSV file and add a header row
echo "Name,Email,Phone,Area of Interest" > "../$OUTPUT_FILE"

# Run each script and append output to CSV
{
    python3 python.py
    node javascript.js
    Rscript r.r
    rustc rust.rs -o rust_executable && ./rust_executable
    swift swift.swift
    bash bash.sh
} | while read -r line; do
    echo "$line" >> "../$OUTPUT_FILE"
done

# Clean up compiled Rust file
rm -f rust_executable

# Navigate out of the repo directory
cd ..

echo "CSV file generated: $OUTPUT_FILE"
