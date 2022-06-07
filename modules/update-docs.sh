#!/bin/bash
# This script will not execute terraform-docs in the ./examples nor the ./resources/ dir
for directory in ./*/; do
    echo $directory
    if [[ "$directory" == "./examples/" ]] || [[ "$directory" == "./resources/" ]]; then
        echo "Match FOUND"
        true
    else
        echo "X"
        terraform-docs markdown table --output-file README.md $directory
    fi
done
