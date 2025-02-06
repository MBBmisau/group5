#!/bin/bash

declare -A student=(
    ["Name"]="Nana Firdausi Lawan"
    ["Email"]="lawalfirdausi2000@gmail.com"
    ["Phone"]="07088644527"
    ["Area of Interest"]="Data Visualization"
)

for key in "${!student[@]}"; do
    echo "$key: ${student[$key]}"
done
