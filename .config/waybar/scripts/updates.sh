#!/bin/sh

UPDATES="$(($(pacman -Qu | wc -l) + $(paru -Qu | wc -l)))"
echo "$UPDATES"
# if [[ ${UPDATES} != "0" ]]
# then
# 	notify-send -a "openSUSE TumbleWeed Updates" "Total number of packages to update" "$UPDATES"
# else
# 	notify-send -a "openSUSE TumbleWeed Updates" "Up to date" "No packages need to be upgraded"
# fi
# if [[ $updates -gt 0 ]]; then
#     echo "#$updates"
# else
#     echo ""
# fi
