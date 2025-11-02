#!/bin/bash

# Build Marp presentations to HTML for GitHub Pages
echo "🎬 Converting Marp presentations to HTML..."

# Check if marp is installed
if ! command -v marp &> /dev/null; then
    echo "❌ Marp CLI not found. Installing..."
    npm install -g @marp-team/marp-cli
fi

# Convert each presentation
echo "📊 Converting overview presentation..."
marp index.md -o index.html

echo "📋 Converting requirements presentation..."
marp requirements.md -o requirements.html

echo "🛠️ Converting tech stack presentation..."
marp tech-stack.md -o tech-stack.html

echo "🧩 Converting modular code presentation..."
marp modular-code.md -o modular-code.html

echo "🧪 Converting testing presentation..."
marp testing.md -o testing.html

echo "🚀 Converting deployment presentation..."
marp deployment.md -o deployment.html

echo "➕ Converting additional topics presentation..."
marp additional-topics.md -o additional-topics.html

echo "✅ All presentations converted to HTML!"
echo "🌐 You can now commit and push to deploy to GitHub Pages"

# List generated files
echo ""
echo "Generated HTML files:"
ls -la *.html