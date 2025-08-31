#!/bin/bash

# Base raw URL for your GitHub repo
BASE_URL="https://raw.githubusercontent.com/hampuslundblad/edh-mm/main/infrastructure"

FILES="
docker-compose.yaml
nginx/default.conf
dockerfile
"

for file in $FILES; do
  echo "Downloading $file..."
  curl -o "$file" "$BASE_URL/$file"
done