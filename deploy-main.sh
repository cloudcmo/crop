#!/bin/bash
set -e

PROJECT_DIR="/Users/carl/code/Crop"

cd "$PROJECT_DIR"

echo ""
echo "Preparing to move tested code from staging to main..."

if [ -n "$(git status --porcelain)" ]; then
  echo "You have uncommitted changes. Commit or stash them first."
  exit 1
fi

git checkout staging
git pull origin staging

CURRENT_BRANCH=$(git branch --show-current)
if [ "$CURRENT_BRANCH" != "staging" ]; then
  echo "Error: Not on staging branch"
  exit 1
fi

git checkout main
git pull origin main

CURRENT_BRANCH=$(git branch --show-current)
if [ "$CURRENT_BRANCH" != "main" ]; then
  echo "Error: Not on main branch"
  exit 1
fi

echo ""
echo "These commits are in staging but not yet in main:"
git log main..staging --oneline || true
echo ""

read -p "Push merged code to LIVE main branch? (y/n): " CONFIRM
if [ "$CONFIRM" != "y" ]; then
  echo "Aborting."
  exit 1
fi

git merge --no-ff staging -m "Promote staging to main"
git push origin main

echo ""
echo "✅ Pushed to MAIN."
echo "Your live site should now deploy."
