#!/bin/bash
PATH=/usr/local/bin:${PATH}

# Cleanup Homebrew!
DATE=$(date +%d-%m-%Y" "%H:%M:%S )
echo "🕥 $DATE | Performing weekly tasks 🍺."
brew cleanup

echo "Updating powerlevel9k repository"
git --git-dir ~/.oh-my-zsh/custom/themes/powerlevel9k/.git pull