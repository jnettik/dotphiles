#!/usr/bin/env bash

echo "Checking for Homebrew..."

# Check for homebrew and install if necessary.
if type "brew" > /dev/null; then
  echo "Homebrew found. Installing dependencies..."
else
  echo "Homebrew not found. Installing Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo "Homebrew installed. Installing dependencies"
fi
