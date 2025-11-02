# Software Quality Documentation

A comprehensive guide to software quality principles and best practices for CSC-640, created as **Marp presentation slides**.

## � Overview

This documentation is structured as a series of **Marp presentations** covering essential software quality principles. Each topic is designed as an interactive slide deck for teaching and reference.

## 📚 Presentation Topics

### Core Quality Principles
1. **[Well-Defined Stories & Clear Goals](requirements.md)** - Quality starts with understanding what you're building
2. **[Right Technology Stack Selection](tech-stack.md)** - Choosing appropriate tools and frameworks
3. **[Modular Code Design](modular-code.md)** - Building reusable, maintainable components
4. **[Comprehensive Test Coverage](testing.md)** - Ensuring reliability through testing
5. **[Deploy Early & Often](deployment.md)** - Continuous integration and deployment practices

### Additional Quality Practices
6. **[Additional Quality Topics](additional-topics.md)** - Code review, documentation, monitoring, security, and performance

### Main Overview
- **[Complete Overview](index.md)** - All principles in one presentation

## 🎬 Using Marp

### Prerequisites
Install Marp CLI:
```bash
npm install -g @marp-team/marp-cli
```

### Viewing Presentations

#### Preview in Browser:
```bash
# Individual presentations
marp requirements.md --preview
marp tech-stack.md --preview
marp modular-code.md --preview
marp testing.md --preview
marp deployment.md --preview
marp additional-topics.md --preview

# Main overview
marp index.md --preview
```

#### Export to HTML:
```bash
# Export individual presentations
marp requirements.md -o requirements.html
marp tech-stack.md -o tech-stack.html
marp testing.md -o testing.html

# Export all presentations
marp *.md
```

#### Export to PDF:
```bash
# Individual PDFs
marp requirements.md -o requirements.pdf
marp testing.md -o testing.pdf

# All presentations to PDF
marp *.md --pdf
```

#### Export to PowerPoint:
```bash
marp index.md -o overview.pptx
marp testing.md -o testing.pptx
```

### VS Code Integration
If using VS Code, install the **Marp for VS Code** extension for live preview and editing.

## 🚀 Quick Start

1. **Clone the repository:**
   ```bash
   git clone https://github.com/islerm2-nku/CSC-640-MI-Docs.github.io.git
   cd CSC-640-MI-Docs.github.io
   ```

2. **Install Marp CLI:**
   ```bash
   npm install -g @marp-team/marp-cli
   ```

3. **Start with the overview:**
   ```bash
   marp index.md --preview
   ```

4. **Dive into specific topics:**
   ```bash
   marp requirements.md --preview
   ```

## 📖 About the Content

Each presentation covers:
- **Core concepts** and principles
- **Real-world examples** and code samples
- **Best practices** and implementation guidelines
- **Common pitfalls** to avoid
- **Implementation checklists** for practical application

### Presentation Structure
- **Introduction** - Why the topic matters
- **The Problem** - What happens without good practices
- **The Solution** - Principles and frameworks
- **Examples** - Code and implementation details
- **Implementation** - Practical steps and checklists
- **Key Takeaways** - Summary of main points

## 🛠️ Customization

### Themes
The presentations use the default Marp theme. You can customize by:

1. **Modify CSS in markdown:**
   ```markdown
   ---
   marp: true
   theme: default
   backgroundColor: #f0f0f0
   ---
   ```

2. **Create custom theme file:**
   ```css
   /* custom-theme.css */
   section {
     background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
     color: white;
   }
   ```

3. **Use custom theme:**
   ```bash
   marp presentation.md --theme custom-theme.css
   ```

## 🎓 For Educators

### Teaching with These Presentations
- Each slide deck is designed for 45-60 minute sessions
- Interactive discussion points included
- Practical exercises and examples
- Incrementally building complexity

### Suggested Course Flow
1. **Week 1:** Overview + Requirements
2. **Week 2:** Tech Stack Selection
3. **Week 3:** Modular Code Design
4. **Week 4:** Testing Strategies
5. **Week 5:** Deployment Practices
6. **Week 6:** Additional Quality Topics

## 📝 Contributing

To add or modify content:

1. **Edit the Markdown files** directly
2. **Follow Marp syntax** for slide breaks (`---`)
3. **Test with Marp preview** before committing
4. **Export to HTML/PDF** for distribution

### Slide Guidelines
- Use `---` to separate slides
- Keep slides focused (one concept per slide)
- Include code examples where helpful
- Use consistent formatting and styling

## 🌐 GitHub Pages Deployment

### Automatic Deployment
This repository includes a **GitHub Actions workflow** that automatically converts Marp presentations to HTML and deploys them to GitHub Pages.

**To enable:**
1. Go to your repository **Settings** → **Pages**
2. Set **Source** to "GitHub Actions"
3. Push your changes to the `main` branch
4. The workflow will automatically build and deploy your presentations

**Live Site:** `https://islerm2-nku.github.io/CSC-640-MI-Docs.github.io/`

### Manual Build (Local Development)
```bash
# Run the build script to convert all presentations to HTML
./build-html.sh

# Or build individual presentations
marp index.md -o index.html
marp requirements.md -o requirements.html
```

### What Gets Deployed
- **Interactive HTML presentations** - Full Marp slide functionality
- **Navigation page** - Easy access to all presentations  
- **Responsive design** - Works on desktop and mobile
- **Presentation controls** - Arrow keys, click navigation

## 📋 Files Overview

```
├── index.md                 # Main overview presentation
├── requirements.md          # Requirements & clear goals
├── tech-stack.md           # Technology stack selection
├── modular-code.md         # Modular code design
├── testing.md              # Test coverage strategies
├── deployment.md           # Deploy early & often
├── additional-topics.md    # Extra quality practices
├── README.md               # This file
└── _config.yml            # Jekyll configuration (legacy)
```

## 🔗 Resources

- **[Marp Official Site](https://marp.app/)** - Documentation and guides
- **[Marp CLI](https://github.com/marp-team/marp-cli)** - Command-line tool
- **[VS Code Extension](https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode)** - Editor integration

---

**Course:** CSC-640 Software Quality  
**Format:** Marp Presentation Slides  
**Repository:** [CSC-640-MI-Docs.github.io](https://github.com/islerm2-nku/CSC-640-MI-Docs.github.io)