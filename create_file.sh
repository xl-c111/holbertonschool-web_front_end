#!/bin/bash

# ✅ Get the absolute path of the directory containing the script (even if symlinked)
SOURCE="${BASH_SOURCE[0]}"
while [ -L "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
SCRIPT_DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

# ✅ Define actual directories
BASE_DIR="$SCRIPT_DIR"
STYLE_DIR="$BASE_DIR/CSS_advanced/styles"
HTML_FILE="$BASE_DIR/html_advanced/index.html"

# ✅ Get latest style number
filename=$(ls -1 "$STYLE_DIR" | grep -E '^[0-9]+-style\.css$' | sort -V | tail -n 1)
prevNum=${filename%-style.css}
newNum=$((prevNum + 1))
newFile="${newNum}-style.css"

# ✅ Copy the file
cp "$STYLE_DIR/$filename" "$STYLE_DIR/$newFile"
echo "Copied: $filename → $newFile"

# ✅ Match relative href like ../CSS_advanced/styles/32-style.css
REGEX="href=[\"']\.\./CSS_advanced/styles/${prevNum}-style\.css[\"']"
RELATIVE_PATH="../CSS_advanced/styles/${newFile}"

if grep -E "$REGEX" "$HTML_FILE" > /dev/null; then
  sed -i -E "s|$REGEX|href=\"${RELATIVE_PATH}\"|" "$HTML_FILE"
  echo "Updated <link> in index.html to: ${RELATIVE_PATH}"
else
  sed -i "/<head>/a \ \ \ \ <link rel=\"stylesheet\" href=\"${RELATIVE_PATH}\">" "$HTML_FILE"
  echo "No existing link found. Inserted new <link> into <head>."
fi

# ✅ Open new file
code "$STYLE_DIR/$newFile"
