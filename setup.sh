#!/bin/bash
set -e

echo "🛠 Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "📦 Installing packages..."
brew install git zsh vim node yarn nvm watchman jq

echo "💻 Installing cask apps..."
brew install --cask iterm2 visual-studio-code android-studio alfred google-chrome postman figma

# Git
git config --global user.name "Mika Jihoon Yoon"
git config --global user.email dyngina@gmail.com

