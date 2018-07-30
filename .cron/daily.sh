#!/bin/bash
PATH=/usr/local/bin:${PATH}

while [ "${NETWORKUP}" != "-YES-" ]
do
  sleep 300
  case "$(curl -s --max-time 2 -I http://google.com | sed 's/^[^ ]*  *\([0-9]\).*/\1/; 1q')" in
    [23]) NETWORKUP="-YES-";;
    5) NETWORKUP="-NO-";;
    *) NETWORKUP="-MAYBE-";;
  esac
done

# Update Homebrew
brew update
brew upgrade
