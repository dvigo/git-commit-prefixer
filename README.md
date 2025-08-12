
# Git Commit Prefixer (Zsh Plugin)

A lightweight **Zsh plugin** to add **custom prefixes** and optional **icons** to your Git commit messages.  
Supports multiple prefix styles (`[fix]:` or `Fix:`) and icon themes (`classic`, `minimal`, or none).  

---

## ✨ Features
- Quickly add consistent commit prefixes.
- Choose between **brackets** style or **labels** style.
- Enable or disable icons.
- Switch between **icon themes** (`classic` or `minimal`).
- Fully configurable via `icons.conf`.

---

## 📦 Installation

### **Oh My Zsh**
1. Clone the plugin into your Oh My Zsh custom plugins folder:
   ```bash
   git clone https://github.com/dvigo/git-commit-prefixer.git ~/.oh-my-zsh/custom/plugins/git-commit-prefixer
   ```
2. Enable it in your `~/.zshrc`:
   ```bash
   plugins=(... git-commit-prefixer)
   ```
3. Reload Zsh:
   ```bash
   source ~/.zshrc
   ```

---

## ⚙️ Configuration

Edit the `icons.conf` file in the plugin folder.

### Example:
```bash
# Enable or disable icons
USE_ICONS=true

# Prefix style: brackets | labels
PREFIX_STYLE="brackets"

# Icon theme: classic | minimal
ICON_STYLE="classic"
```

---

## 🖊️ Usage

Basic syntax:
```bash
git-commit-prefixer <type> "your commit message"
```

Available types:
```
feat, fix, build, chore, ci, docs, style, refactor, perf, test
```

### Examples:
```bash
git-commit-prefixer feat "add login form"
# ✨ [feat]: add login form

git-commit-prefixer fix "corrected typo in README"
# 🐛 [fix]: corrected typo in README
```

---

## 🎨 Styles

### Brackets (default)
```
[fix]:
[feat]:
[build]:
[chore]:
[ci]:
[docs]:
[style]:
[refactor]:
[perf]:
[test]:
```

### Labels
```
Fix:
Feature:
Build:
Chore:
CI:
Docs:
Style:
Refactor:
Performance:
Test:
```

---

## 📌 Icon Themes

### Classic (default)
```
🐛 ✨ 🏗️ 🧹 ⚙️ 📝 🎨 ♻️ ⚡ ✅
```

### Minimal
```
✖ ✦ ▲ • ⚙ ✎ ■ ↻ ➠ ✓
```

---

## 🔧 Roadmap
- [ ] Add interactive selection for commit type (fzf or select menu).
- [ ] Add command to switch styles/themes without editing `icons.conf`.
- [ ] Support for custom user-defined commit types.

---

## 📜 License
MIT License — Free to use and modify.

---

