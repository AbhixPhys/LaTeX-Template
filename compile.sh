#!/bin/bash

# LaTeX compilation script with bibliography
# Usage: ./compile.sh

echo "Compiling thesis document (main.tex)..."
FILE="main"

echo "Running LaTeX compilation sequence..."

# Complete compilation sequence for bibliography
echo "Pass 1: Initial compilation..."
pdflatex -interaction=nonstopmode "$FILE.tex"

echo "Pass 2: Processing bibliography..."
bibtex "$FILE"

echo "Pass 3: Incorporating bibliography..."
pdflatex -interaction=nonstopmode "$FILE.tex"

echo "Pass 4: Final reference resolution..."
pdflatex -interaction=nonstopmode "$FILE.tex"

if [ -f "$FILE.pdf" ]; then
    echo "Successfully compiled $FILE.pdf"
else
    echo "Compilation failed. Check the log file: $FILE.log"
    exit 1
fi