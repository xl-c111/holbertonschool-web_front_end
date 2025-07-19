#!/bin/bash

# Hardcoded base path 
BASE_DIR="/home/Work/holbertonschool-web_front_end"
STYLE_DIR="$BASE_DIR/CSS_advanced/styles"
HTML_FILE="$BASE_DIR/html_advanced/index.html"

# Find the latest style file
filename=$(ls -1 "$STYLE_DIR" | grep -E '^[0-9]+-style\.css$' | sort -V | tail -n 1)
prevNum=${filename%-style.css}
newNum=$((prevNum + 1))
newFile="${newNum}-style.css"

# Copy the latest file to new
cp "$STYLE_DIR/$filename" "$STYLE_DIR/$newFile"
echo "Copied: $filename → $newFile"

# Regex to match href like 'styles/13-style.css'
REGEX="href=[\"']\.?/?styles/${prevNum}-style\.css[\"']"

# Replace existing link or insert a new one
if grep -E "$REGEX" "$HTML_FILE" > /dev/null; then
  sed -i -E "s|$REGEX|href=\"styles/${newFile}\"|" "$HTML_FILE"
  echo "Updated <link> in index.html to: styles/${newFile}"
else
  sed -i "/<head>/a \ \ \ \ <link rel=\"stylesheet\" href=\"styles/${newFile}\">" "$HTML_FILE"
  echo "No existing link found. Inserted new <link> into <head>."
fi

# Open the new CSS file
code "$STYLE_DIR/$newFile"
