#!/bin/bash

# Defined in ~/.ssh/config
remote_host="timpietrusky-production"
remote_path="/home/tim/subdomains/html"
local_source="public"
live_url="https://timpietrusky.com"

echo "Preparing deploy"
echo "========================="

echo "Building website"
echo "========================="

hugo -b="$live_url" && echo "Done"

echo "Uploading new files"
echo "========================="
cd $local_source && rsync -r -v . $remote_host:$remote_path && echo "Done"

echo "Update done. Your site is now live at $live_url"
