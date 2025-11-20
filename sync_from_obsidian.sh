#!/usr/bin/env bash
set -e

VAULT="/Users/farjam/Library/CloudStorage/OneDrive-UniversityofEdinburgh/Obsidian/ObsidianED/Blog"
TARGET="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/content"

echo "Syncing Obsidian blog from:"
echo "  $VAULT"
echo "to:"
echo "  $TARGET"
echo

rsync -av --delete "$VAULT/" "$TARGET/"

echo
echo "Done. Hugo content is now up to date."
