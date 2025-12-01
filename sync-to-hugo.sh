#!/bin/bash

# Sync Marp presentations to Hugo content
# This script converts Marp .md files to Hugo-compatible format

set -e

# Color output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Syncing Marp files to Hugo...${NC}"

# Base directory
BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
HUGO_CONTENT_DIR="$BASE_DIR/report/content/principles"

# File mappings: filename:title:weight
FILES=(
  "requirements:Well-Defined Stories & Clear Goals:2"
  "tech-stack:Right Tech Stack Selection:3"
  "modular-code:Modular Code Design:4"
  "api-design:API Design Best Practices:5"
  "design-and-diagrams:Design & Diagrams:6"
  "testing:Comprehensive Test Coverage:7"
  "deployment:Deploy Early & Often:8"
  "additional-topics:Additional Quality Practices:9"
)

# Process each file
for file_info in "${FILES[@]}"; do
  IFS=':' read -r filename title weight <<< "$file_info"
  
  SOURCE_FILE="$BASE_DIR/${filename}.md"
  DEST_FILE="$HUGO_CONTENT_DIR/${filename}.md"
  
  if [ ! -f "$SOURCE_FILE" ]; then
    echo -e "⚠️  Skipping ${filename}.md (not found)"
    continue
  fi
  
  echo -e "${GREEN}✓${NC} Syncing ${filename}.md"
  
  # Remove Marp frontmatter (everything between first --- and second ---)
  # Then add Hugo frontmatter
  awk 'BEGIN {skip=0} 
       /^---$/ {
         if(NR==1) {skip=1; next} 
         else if(skip==1) {skip=0; next}
       } 
       !skip' "$SOURCE_FILE" > "$DEST_FILE.tmp"
  
  # Create Hugo file with frontmatter
  cat > "$DEST_FILE" << EOF
---
title: "$title"
date: 2024-11-12
draft: false
weight: $weight
---

EOF
  
  # Append content
  cat "$DEST_FILE.tmp" >> "$DEST_FILE"
  rm "$DEST_FILE.tmp"
done

echo -e "${BLUE}Sync complete!${NC}"
echo ""
echo "Next steps:"
echo "  1. Test locally: cd report && hugo server -D"
echo "  2. Commit changes: git add . && git commit -m 'Update documentation'"
echo "  3. Deploy: git push"
