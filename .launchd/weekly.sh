#!/bin/bash
PATH=/usr/local/bin:${PATH}

# Cleanup Homebrew!
DATE=$(date +%d-%m-%Y" "%H:%M:%S )
echo ""
echo "🕥 $DATE | Performing weekly tasks 🍺."

# Delete all but linked versions of software
brew cleanup -s
brew doctor
brew missing

#echo "Updating powerlevel9k repository"
#git --git-dir ~/.oh-my-zsh/custom/themes/powerlevel9k/.git pull

echo 'Finished weekly update tasks' | terminal-notifier -title 'Updated' -subtitle 'Weekly' -execute 'code ~/.launchd' -sound default