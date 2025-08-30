#!/bin/bash

# Script to update cursor rules submodule in a project
# Usage: ./scripts/update-submodule.sh

set -e

echo "🔄 Updating Cursor Rules submodule..."

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "❌ Error: Not in a git repository"
    exit 1
fi

# Check if .cursor/rules submodule exists
if [ ! -d ".cursor/rules" ]; then
    echo "❌ Error: .cursor/rules submodule not found"
    echo "💡 To add this repository as a submodule, run:"
    echo "   git submodule add https://github.com/yourusername/cursor_rules.git .cursor/rules"
    exit 1
fi

# Update the submodule
echo "📥 Pulling latest changes from cursor rules repository..."
git submodule update --remote .cursor

# Check if there are any changes
if git diff --quiet .cursor/rules; then
    echo "✅ Submodule is already up to date"
else
    echo "📝 Changes detected in cursor rules submodule"
    echo "💡 To commit these changes, run:"
    echo "   git add .cursor/rules"
    echo "   git commit -m 'Update cursor rules submodule'"
fi

echo "🎉 Done!"
