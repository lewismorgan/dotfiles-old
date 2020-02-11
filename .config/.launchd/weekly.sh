#!/usr/bin/env bash
PATH=${HOME}/bin:/usr/local/bin:${PATH}

DATE=$(date +%d-%m-%Y" "%H:%M:%S )
echo ""
echo "🕥 $DATE | Performing weekly tasks 🍺."

update
clean

rm ~/Brewfile
brew bundle dump

echo 'Finished running weekly maint. tasks' | terminal-notifier -title 'Weekly Script'

echo "*** Finished. ***"