#!/bin/bash
set -e

# Fetch latest official Omarchy changes
git fetch upstream

# Merge into current branch, prefer your changes automatically
git merge -X ours upstream/master

# Push merged result to your fork
git push origin master

echo "Update complete! Your changes were preserved."
