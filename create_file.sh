#!/bin/bash

# Get the script's directory (works from any location)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Set paths
STYLE_DIR="$SCRIPT_DIR/CSS_advanced/styles"
HTML_FILE="$SCRIPT_DIR/html_advanced/index.html"

# Find the latest style file
filename=$(ls -1 "$STYLE_DIR" | grep -E '^[0-9]+-style\.css$' | sort -V | tail -n 1)
prevNum=${filename%-style.css}
newNum=$((prevNum + 1))
newFile="${newNum}-style.css"

# Copy the latest file to a new numbered file
cp "$STYLE_DIR/$filename" "$STYLE_DIR/$newFile"
echo "Copied: $filename → $newFile"

# Regex to match href values like 'styles/13-style.css', "./styles/13-style.css", etc.
REGEX="href=[\"']\.?/?styles/${prevNum}-style\.css[\"']"

# If a matching <link> is found, replace it
if grep -E "$REGEX" "$HTML_FILE" > /dev/null; then
  sed -i -E "s|$REGEX|href=\"styles/${newFile}\"|" "$HTML_FILE"
  echo "Updated <link> in index.html to: styles/${newFile}"
else
  # If not found, insert a new <link> after the <head> tag
  sed -i "/<head>/a \ \ \ \ <link rel=\"stylesheet\" href=\"styles/${newFile}\">" "$HTML_FILE"
  echo "No existing link found. Inserted new <link> into <head>."
fi

# Open the new CSS file in VS Code
code "$STYLE_DIR/$newFile"
