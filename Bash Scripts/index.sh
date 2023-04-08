#!/bin/bash

newFolder="/c/User/logic/Desktop/New Folder"

BLUE='\033[0;34m'
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
fileCount=0

for f in "/c/Users/logic/Desktop/New folder"/*.txt; do 
  ((fileCount=fileCount+1))
  echo "$f"
  cp -r "$f" "/c/Users/logic/Desktop/New folder/test_folder/"
  echo -e "${GREEN}$fileCount File/s Copied to test_folder${NC}"
  sleep 2
done  
echo -e "${BLUE}$fileCount Total Files Copied into test_folder${NC}"

# Loop through files in the directory
for file in "/c/Users/logic/Desktop/New Folder/test_folder"/*.txt; do
  # Get the file size in human-readable format
  file_size=$(du -sh "$file" | awk '{print $1}')
  # Echo the file name and file size
  echo "File: $file  Size: $file_size"
done

