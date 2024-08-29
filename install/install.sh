#!/usr/bin/env bash

echo 'Installing xcode command line tools'
xcode-select --install

echo 'Installing oh my zsh'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";

# Docs
#https://docs.brew.sh/Installation
echo 'Installing Homebrew'

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";

