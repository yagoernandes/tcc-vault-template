#!/bin/bash

# Build TCC - Converte Markdown para PDF nas normas ABNT
# Uso: ./build.sh [arquivo.md]

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
INPUT_FILE="${1:-$SCRIPT_DIR/TCC.md}"
OUTPUT_FILE="${INPUT_FILE%.md}.pdf"

echo "Gerando PDF: $OUTPUT_FILE"

pandoc "$INPUT_FILE" \
  --from markdown \
  --to pdf \
  --pdf-engine=xelatex \
  --citeproc \
  --bibliography="$SCRIPT_DIR/referencias.bib" \
  --csl="$SCRIPT_DIR/abnt.csl" \
  --template="$SCRIPT_DIR/template-abnt.tex" \
  --variable documentclass=article \
  --variable papersize=a4 \
  --variable fontsize=12pt \
  --variable linestretch=1.5 \
  --variable geometry:"top=3cm, bottom=2cm, left=3cm, right=2cm" \
  --variable mainfont="Times New Roman" \
  --variable indent=true \
  --variable parindent="1.25cm" \
  --toc \
  --number-sections \
  -o "$OUTPUT_FILE"

echo "PDF gerado com sucesso: $OUTPUT_FILE"
