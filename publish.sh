#!/bin/bash
# Usage: bash publish.sh "commit message"

set -e

echo "Rendering Quarto website..."
quarto render

echo "Staging changes..."
git add -A

echo "Committing changes..."
git commit -m "${1:-Update learning note}"

echo "Pushing to GitHub.."
git push origin main

echo "Website update submitted successfully."