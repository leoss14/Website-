#!/bin/bash
# Run from wherever you downloaded these files
# Usage: bash deploy_html.sh

ROOT="/Users/leoss/Desktop/Portfolio/Website-"

echo "Deploying updated HTML files..."

# Root pages
cp root_index.html    "$ROOT/index.html"
cp root_about.html    "$ROOT/about.html"
cp root_contact.html  "$ROOT/contact.html"
cp root_projects.html "$ROOT/projects.html"

# Project pages
cp cb_page.html   "$ROOT/projects/central-bank/page.html"
cp pt_page.html   "$ROOT/projects/pink-tax/page.html"
cp uber_page.html "$ROOT/projects/uber/page.html"

echo "Done. All HTML files updated."
echo ""
echo "NOTE: capstone page.html still needs updating."
echo "Upload capstone_page.html and I can process it too."
