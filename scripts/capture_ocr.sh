#!/bin/bash
# Captura area com flameshot
TMP_IMAGE=$(mktemp /tmp/screenshot.XXXXXX.png)
flameshot gui -r > "$TMP_IMAGE"

# If the user didn't cancel the capture
if [ -s "$TMP_IMAGE" ]; then
    # Run OCR and copy to clipboard
    tesseract "$TMP_IMAGE" - stdout | xclip -selection clipboard
    # Optional: notify the user
    notify-send "Text extracted" "Text from screenshot copied to clipboard"
fi

rm -f "$TMP_IMAGE"

