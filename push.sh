#!/bin/bash
# Repsitory update on the current branch

echo -e "\033[0;32m$(pwd)\033[0m"

[ -z "$1" ] && read -p "Enter commit comment: " comment || comment=$1
[ -z "$comment" ] && comment="Auto commit"

git add -A && git commit -m "$comment"
git pull --rebase && git push origin HEAD



