#!/bin/sh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Set up Homebrew 
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Prerequisite installations
brew install git
brew install gh

# Github authorization
gh auth login

# Onboarding script clone
git clone https://github.com/Komi-app/onboarding

echo "#####"
echo "# Onboarding ready to go!
echo "###"
echo
echo "Run the following to begin the onboarding script:"
echo "  cd onboarding"
echo "  sudo xattr -c ./configure.sh"
echo "  ./configure.sh"
echo
