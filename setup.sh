#!/usr/bin/env bash

# Create home directory folders.
for folder in "Sites" "Tools"; do
  if [[ ! -d ~/${folder} ]]; then
    mkdir ~/${folder}
  fi
done

# Intall Homebrew, binaries, and apps.
source ./brew.sh
