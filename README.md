
# Git Commit Prefixer (Zsh Plugin)

A lightweight **Zsh plugin** to add **custom prefixes** and optional **icons** to your Git commit messages.  
Supports multiple prefix styles (`[fix]:` or `Fix:`) and icon themes (`classic`, `minimal`, or none).  

---
## ⚡ Quick Start
```bash
git-commit-prefixer feat "add dark mode toggle"
# ✨ [feat]: add dark mode toggle
```

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

## 🎥 Demo

**Static preview**  
![Plugin demo static](assets/commit-prefixer.svg)

**Live demo (Asciinema)**  
[![asciicast](https://asciinema.org/a/LplBSexiC7dIuabqNyLUFzWt1.svg)](https://asciinema.org/a/LplBSexiC7dIuabqNyLUFzWt1)
---
## ⚙️ Configuration

Edit the `icons.conf` file in the plugin folder or adjust the variables inside it.  

| Setting        | Values                        | Default   | Description |
|----------------|--------------------------------|-----------|-------------|
| `USE_ICONS`    | `true` / `false`               | `true`    | Enable or disable icons |
| `PREFIX_STYLE` | `brackets` / `labels`          | `brackets`| Commit prefix format |
| `ICON_STYLE`   | `classic` / `minimal` / `none`         | `classic` | Icon theme |

**Example `icons.conf`**
```bash
USE_ICONS=true
PREFIX_STYLE="brackets"
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
GNU General Public License v3.0 — See [LICENSE](LICENSE) for details.

---

