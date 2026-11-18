#!/bin/sh
# Renders tools/preview.html to screenshots/preview.png (1280x800) with headless Chrome.
set -eu
here=$(cd "$(dirname "$0")/.." && pwd)
chrome=${CHROME:-google-chrome}
"$chrome" --headless=new --disable-gpu --hide-scrollbars --allow-file-access-from-files \
  --window-size=1280,800 --screenshot="$here/screenshots/preview.png" "file://$here/tools/preview.html"
