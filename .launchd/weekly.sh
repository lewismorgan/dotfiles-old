#!/bin/bash
PATH=/usr/local/bin:${PATH}

# Cleanup Homebrew!
DATE=$(date +%d-%m-%Y" "%H:%M:%S )
echo "🕥 $DATE | Performing weekly Homebrew cleanup 🍺."
brew cleanup
