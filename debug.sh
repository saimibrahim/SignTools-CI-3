#!/bin/bash
set -eu -o pipefail -E

echo "=============================================="

<<<<<<< HEAD
screencapture test.png
echo "Uploading screenshot..."
if ! curl -w "\n" --upload-file test.png "https://transfer.sh/$(openssl rand -hex 8).png"; then
    echo "Error uploading screenshot"
fi
=======
screencapture test.jpg
echo "Uploading screenshot..."
until curl https://bashupload.com -T test.jpg; do
    echo "Error, sleeping"
    sleep 1
done
>>>>>>> e9b6a95 (Initial commit)

echo "=============================================="
