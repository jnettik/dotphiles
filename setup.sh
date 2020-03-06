#!/usr/bin/env bash

# Create home directory folders.
for folder in "Sites" "Tools"; do
  if [[ ! -d ~/${folder} ]]; then
    echo "Creating ~/${folder} folder..."
    mkdir ~/${folder}
  fi
done

# Intall Homebrew, binaries, and apps.
source ./brew.sh
