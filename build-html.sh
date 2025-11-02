#!/bin/bash

# Build Marp presentations to HTML for GitHub Pages
echo "🎬 Converting Marp presentations to HTML..."

# Check if marp is installed
if ! command -v marp &> /dev/null; then
    echo "❌ Marp CLI not found. Installing..."
    npm install -g @marp-team/marp-cli@3.4.0
fi

# Convert each presentation with explicit flags
echo "📊 Converting overview presentation..."
marp --html --allow-local-files index.md --output index.html

echo "📋 Converting requirements presentation..."
marp --html --allow-local-files requirements.md --output requirements.html

echo "🛠️ Converting tech stack presentation..."
marp --html --allow-local-files tech-stack.md --output tech-stack.html

echo "🧩 Converting modular code presentation..."
marp --html --allow-local-files modular-code.md --output modular-code.html

echo "🧪 Converting testing presentation..."
marp --html --allow-local-files testing.md --output testing.html

echo "🚀 Converting deployment presentation..."
marp --html --allow-local-files deployment.md --output deployment.html

echo "➕ Converting additional topics presentation..."
marp --html --allow-local-files additional-topics.md --output additional-topics.html

echo "✅ All presentations converted to HTML!"
echo "🌐 You can now commit and push to deploy to GitHub Pages"

# List generated files
echo ""
echo "Generated HTML files:"
ls -la *.html