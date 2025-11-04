# 🚀 LazyVim/Neovim Speed Cheat Sheet
### Your Ultimate Reference Guide

> **Tip:** Open this in Neovim with: `nvim ~/lazyvim-cheatsheet.md`
> **Quick Access Alias:** Add to `.bashrc_aliases`: `alias cheat='nvim ~/lazyvim-cheatsheet.md'`

---

## 🎯 ESSENTIAL MODES

| Mode | Key | Description |
|------|-----|-------------|
| **Normal** | `Esc` | Default mode for navigation |
| **Insert** | `i` | Insert before cursor |
| **Insert** | `a` | Insert after cursor |
| **Insert** | `I` | Insert at line start |
| **Insert** | `A` | Insert at line end |
| **Insert** | `o` | New line below |
| **Insert** | `O` | New line above |
| **Visual** | `v` | Character-wise selection |
| **Visual Line** | `V` | Line-wise selection |
| **Visual Block** | `Ctrl-v` | Block selection |
| **Command** | `:` | Execute commands |

---

## ⚡ LIGHTNING-FAST MOVEMENT

### Basic Navigation
| Key | Action |
|-----|--------|
| `h` `j` `k` `l` | ← ↓ ↑ → |
| `w` | Next word |
| `b` | Back word |
| `e` | End of word |
| `W` `B` `E` | Same but ignore punctuation |
| `0` | Start of line |
| `^` | First non-blank character |
| `$` | End of line |
| `gg` | Top of file |
| `G` | Bottom of file |
| `50G` | Go to line 50 |
| `{` | Previous paragraph |
| `}` | Next paragraph |

### Screen Navigation
| Key | Action |
|-----|--------|
| `Ctrl-u` | Up half page |
| `Ctrl-d` | Down half page |
| `Ctrl-b` | Up full page |
| `Ctrl-f` | Down full page |
| `Ctrl-e` | Scroll down one line |
| `Ctrl-y` | Scroll up one line |
| `zz` | Center screen on cursor |
| `zt` | Top screen on cursor |
| `zb` | Bottom screen on cursor |
| `H` | Top of screen |
| `M` | Middle of screen |
| `L` | Bottom of screen |

### Find Character (SUPER FAST!)
| Key | Action |
|-----|--------|
| `f{char}` | Find next {char} on line |
| `F{char}` | Find previous {char} |
| `t{char}` | 'Til next {char} (before) |
| `T{char}` | 'Til previous {char} |
| `;` | Repeat last find |
| `,` | Repeat last find backward |

### Search
| Key | Action |
|-----|--------|
| `/pattern` | Search forward |
| `?pattern` | Search backward |
| `n` | Next match |
| `N` | Previous match |
| `*` | Search word under cursor forward |
| `#` | Search word under cursor backward |
| `:%s/old/new/g` | Replace all in file |
| `:%s/old/new/gc` | Replace all with confirmation |

### Marks & Jumps
| Key | Action |
|-----|--------|
| `m{a-z}` | Set mark {a-z} |
| `'{a-z}` | Jump to mark {a-z} |
| `Ctrl-o` | Jump to previous location |
| `Ctrl-i` | Jump to next location |
| `'.` | Jump to last change |

---

## 🔥 EDITING SUPERPOWERS

### Basic Editing
| Key | Action |
|-----|--------|
| `x` | Delete character |
| `dd` | Delete line |
| `D` | Delete to end of line |
| `yy` | Yank (copy) line |
| `Y` | Yank to end of line |
| `p` | Paste after cursor |
| `P` | Paste before cursor |
| `u` | Undo |
| `Ctrl-r` | Redo |
| `.` | Repeat last command |
| `~` | Toggle case |
| `gU{motion}` | Uppercase |
| `gu{motion}` | Lowercase |

### Text Objects (GAME CHANGER!)
Format: `{operator}{a/i}{object}`
- `a` = "around" (includes delimiter)
- `i` = "inner" (excludes delimiter)

| Command | Meaning | Example |
|---------|---------|---------|
| `ciw` | Change inner word | Changes word |
| `caw` | Change around word | Changes word + space |
| `ci"` | Change inner quotes | Changes "text" |
| `ca"` | Change around quotes | Changes "text" including quotes |
| `ci(` | Change inner parens | Changes (text) |
| `ci{` | Change inner braces | Changes {text} |
| `ci[` | Change inner brackets | Changes [text] |
| `cit` | Change inner tag | Changes `<tag>text</tag>` |
| `ciB` | Change inner block | Changes { multi-line } |
| `cis` | Change inner sentence | Changes sentence |
| `cip` | Change inner paragraph | Changes paragraph |
| `das` | Delete around sentence | Deletes whole sentence |
| `dap` | Delete around paragraph | Deletes whole paragraph |
| `yiw` | Yank inner word | Copies word |
| `yip` | Yank inner paragraph | Copies paragraph |
| `vib` | Visual inner block | Selects inside () |

### Number Operations
| Key | Action |
|-----|--------|
| `Ctrl-a` | Increment number |
| `Ctrl-x` | Decrement number |
| `5<Ctrl-a>` | Add 5 to number |

### Multiple Lines
| Key | Action |
|-----|--------|
| `Ctrl-v` | Visual block mode |
| `I` | Insert at start (in block) |
| `A` | Append at end (in block) |
| `c` | Change selection |
| `Esc Esc` | Apply to all lines |

---

## 🎮 LAZYVIM SUPERPOWERS

### Leader Key = `<Space>`

### Telescope (Fuzzy Finder)
| Key | Action | Use Case |
|-----|--------|----------|
| `<space>ff` | Find Files | Open any file |
| `<space>fg` | Live Grep | Search in files |
| `<space>fb` | Find Buffers | Switch files |
| `<space>fr` | Recent Files | Recent files |
| `<space>fh` | Help Tags | Search help |
| `<space>/` | Search Buffer | Find in file |
| `<space>:` | Command History | Previous commands |
| `<space>fc` | Find Config | Find LazyVim configs |
| `<space>fw` | Find Word | Search word under cursor |

**In Telescope:**
- `Ctrl-j/k` or `↓/↑` - Navigate
- `Ctrl-t` - Open in new tab
- `Ctrl-v` - Open in vertical split
- `Ctrl-x` - Open in horizontal split
- `Esc` - Close

### File Explorer (Neo-tree)
| Key | Action |
|-----|--------|
| `<space>e` | Toggle explorer |
| `<space>E` | Toggle in current buffer |
| `a` | Add file/folder (/ for folder) |
| `d` | Delete |
| `r` | Rename |
| `c` | Copy |
| `x` | Cut |
| `p` | Paste |
| `y` | Copy name to clipboard |
| `Y` | Copy relative path |
| `gy` | Copy absolute path |
| `R` | Refresh |
| `/` | Fuzzy search |
| `H` | Toggle hidden files |
| `?` | Show help |

### Buffer Management
| Key | Action |
|-----|--------|
| `<space>bb` | Buffer list |
| `<space>bd` | Close buffer |
| `<space>bD` | Close all but current |
| `[b` | Previous buffer |
| `]b` | Next buffer |
| `<S-h>` | Previous buffer (Shift+h) |
| `<S-l>` | Next buffer (Shift+l) |

### Window Management
| Key | Action |
|-----|--------|
| `<Ctrl-h>` | Move to left window |
| `<Ctrl-j>` | Move to bottom window |
| `<Ctrl-k>` | Move to top window |
| `<Ctrl-l>` | Move to right window |
| `<space>w` | Window commands menu |
| `<space>wd` | Close window |
| `<space>w-` | Split horizontal |
| `<space>w|` | Split vertical |
| `<Ctrl-w>=` | Equal window sizes |

### Tab Management
| Key | Action |
|-----|--------|
| `<space><tab>l` | Last tab |
| `<space><tab>f` | First tab |
| `<space><tab><tab>` | New tab |
| `<space><tab>d` | Close tab |
| `[<tab>` | Previous tab |
| `]<tab>` | Next tab |
| `gt` | Next tab (classic) |
| `gT` | Previous tab (classic) |

### Terminal
| Key | Action |
|-----|--------|
| `<Ctrl-/>` | Toggle terminal |
| `<Ctrl-_>` | Alt toggle (some terminals) |
| `<space>ft` | Terminal (root) |
| `<space>fT` | Terminal (cwd) |
| `<Ctrl-\><Ctrl-n>` | Exit terminal mode |

### Code/LSP Features
| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gr` | Go to references |
| `gD` | Go to declaration |
| `gI` | Go to implementation |
| `gy` | Go to type definition |
| `K` | Hover documentation |
| `<space>ca` | Code actions |
| `<space>cf` | Format code |
| `<space>cr` | Rename symbol |
| `<space>cd` | Line diagnostics |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |
| `[e` | Previous error |
| `]e` | Next error |

### Git Integration
| Key | Action |
|-----|--------|
| `<space>gg` | Open LazyGit |
| `<space>gb` | Git blame line |
| `<space>gB` | Git browse |
| `<space>gf` | Git file history |
| `[h` | Previous hunk |
| `]h` | Next hunk |
| `<space>ghp` | Preview hunk |
| `<space>ghs` | Stage hunk |
| `<space>ghu` | Undo stage hunk |
| `<space>ghr` | Reset hunk |

### Search & Replace
| Key | Action |
|-----|--------|
| `<space>sr` | Replace in files (Spectre) |
| `<space>sR` | Replace word (Spectre) |

### UI Toggles
| Key | Action |
|-----|--------|
| `<space>uc` | Toggle conceal level |
| `<space>uf` | Toggle format on save |
| `<space>uh` | Toggle inlay hints |
| `<space>ul` | Toggle line numbers |
| `<space>uL` | Toggle relative numbers |
| `<space>us` | Toggle spelling |
| `<space>uw` | Toggle word wrap |

### Miscellaneous
| Key | Action |
|-----|--------|
| `<space>l` | Lazy (plugin manager) |
| `<space>qq` | Quit all |
| `<space>ui` | Inspect position |
| `<space>L` | LazyVim Changelog |
| `<space>?` | Help/Keymaps |
| `<space>h` | New file |

---

## 💪 ADVANCED TECHNIQUES

### Macros (Record & Replay)
| Key | Action |
|-----|--------|
| `q{a-z}` | Start recording to register {a-z} |
| `q` | Stop recording |
| `@{a-z}` | Play macro from register {a-z} |
| `@@` | Replay last macro |
| `100@a` | Play macro 'a' 100 times |

**Example:** Record a macro to format JSON:
1. `qa` - Start recording to register 'a'
2. Do your edits
3. `q` - Stop recording
4. `@a` - Replay on next line
5. `@@` - Replay again

### Registers (Copy/Paste Memory)
| Key | Action |
|-----|--------|
| `"ay` | Yank to register a |
| `"ap` | Paste from register a |
| `"0p` | Paste from yank register (not delete) |
| `"+y` | Yank to system clipboard |
| `"+p` | Paste from system clipboard |
| `:reg` | Show all registers |

### Surround (vim-surround)
| Key | Action | Example |
|-----|--------|---------|
| `ysiw"` | Surround word with " | word → "word" |
| `ysiw)` | Surround with () | word → (word) |
| `yss"` | Surround line with " | line → "line" |
| `cs"'` | Change " to ' | "word" → 'word' |
| `ds"` | Delete surrounding " | "word" → word |
| `dst` | Delete surrounding tag | `<b>word</b>` → word |

### Visual Block Magic
1. `Ctrl-v` - Enter visual block
2. Select with `j/k` 
3. `I` - Insert at start
4. Type text
5. `Esc Esc` - Apply to all lines

**Use Cases:**
- Comment multiple lines: `Ctrl-v` → select → `I#` → `Esc Esc`
- Indent multiple lines
- Add same text to multiple lines

---

## 📝 COMMAND MODE ESSENTIALS

### File Operations
| Command | Action |
|---------|--------|
| `:w` | Save (write) |
| `:q` | Quit |
| `:wq` | Save and quit |
| `:q!` | Quit without saving |
| `:x` | Save and quit (only if changed) |
| `:wa` | Save all buffers |
| `:qa` | Quit all |
| `:wqa` | Save all and quit |
| `:e filename` | Edit/open file |
| `:saveas newfile` | Save as new file |

### Navigation
| Command | Action |
|---------|--------|
| `:50` | Go to line 50 |
| `:$` | Go to last line |
| `:0` | Go to first line |

### Editing
| Command | Action |
|---------|--------|
| `:sort` | Sort lines |
| `:sort!` | Sort reverse |
| `:sort u` | Sort and remove duplicates |
| `:%!jq .` | Format JSON (requires jq) |
| `:%!prettier` | Format with prettier |

### Windows & Splits
| Command | Action |
|---------|--------|
| `:split` or `:sp` | Horizontal split |
| `:vsplit` or `:vsp` | Vertical split |
| `:new` | New window horizontal |
| `:vnew` | New window vertical |
| `:only` | Close all other windows |

### Buffers
| Command | Action |
|---------|--------|
| `:ls` or `:buffers` | List buffers |
| `:b 2` | Switch to buffer 2 |
| `:bn` | Next buffer |
| `:bp` | Previous buffer |
| `:bd` | Delete buffer |

### Help
| Command | Action |
|---------|--------|
| `:help` | Open help |
| `:help {topic}` | Help on topic |
| `:helpgrep {pattern}` | Search in help |

---

## 🎯 QUICK COMBOS (Muscle Memory)

### Fast Line Editing
| Combo | Result |
|-------|--------|
| `dd` | Delete line |
| `cc` | Change line |
| `yy` | Copy line |
| `D` | Delete to end of line |
| `C` | Change to end of line |
| `Y` | Copy to end of line |
| `S` | Substitute line (delete + insert) |

### Fast Word Editing
| Combo | Result |
|-------|--------|
| `ciw` | Change word |
| `diw` | Delete word |
| `yiw` | Copy word |
| `caw` | Change word + space |
| `daw` | Delete word + space |

### Fast Quote/Bracket Editing
| Combo | Result |
|-------|--------|
| `ci"` | Change inside quotes |
| `ca"` | Change around quotes (incl. quotes) |
| `ci(` | Change inside parentheses |
| `ci{` | Change inside braces |
| `ci[` | Change inside brackets |
| `cit` | Change inside HTML tag |

### Repeat Actions
| Combo | Result |
|-------|--------|
| `.` | Repeat last change |
| `;` | Repeat last f/F/t/T |
| `&` | Repeat last :s command |
| `@@` | Repeat last macro |

---

## 🚀 PRODUCTIVITY WORKFLOWS

### Workflow 1: Edit Config Files
```bash
# Add to ~/.bashrc_aliases:
alias cheat='nvim ~/lazyvim-cheatsheet.md'
alias vimrc='cd ~/.config/nvim && nvim .'

# Usage:
cheat         # View this cheatsheet
na            # Edit bash aliases (already set up!)
nhypr         # Edit hyprland config (already set up!)
```

### Workflow 2: Quick File Opening
```bash
# In terminal:
v filename.txt              # Open file
v .                        # Open file explorer
v +25 file.rb              # Open at line 25
v -p file1 file2 file3     # Open as tabs

# In Neovim:
<space>ff                  # Fuzzy find files
<space>fr                  # Recent files
<space>fg                  # Search in files
```

### Workflow 3: Project Editing
```bash
cd ~/my-project
nvim                       # Open in project root

# Then:
<space>e                   # Toggle file explorer
<space>ff                  # Fuzzy find any file
<space>fg                  # Search across all files
<Ctrl-/>                   # Open terminal to run commands
```

### Workflow 4: Code Navigation
```
gd                         # Go to definition
gr                         # See all references
K                          # Read documentation
<space>ca                  # See available actions
Ctrl-o                     # Jump back
```

### Workflow 5: Multi-file Editing
```
<space>ff                  # Open file 1
<space>ff                  # Open file 2
<space>bb                  # See all open files
<S-l>                      # Switch to next file
[b / ]b                    # Navigate buffers
```

---

## 🎨 TOKYO NIGHT TIPS

Your setup is optimized for Tokyo Night! Here are some visual tips:

1. **Conceal Level** - `<space>uc` toggles concealing (prettier markdown/code)
2. **Line Numbers** - `<space>ul` toggles line numbers
3. **Relative Numbers** - `<space>uL` for relative line numbers (great for motions!)
4. **Transparency** - Already configured in your theme!

---

## 💡 PRO TIPS

1. **Use Relative Line Numbers**: Enable with `<space>uL`. Then jump with `5j` (down 5 lines)
2. **Master Text Objects**: `ci"` `ca(` `cit` - these are GAME CHANGERS
3. **Learn 5 Commands at a Time**: Don't memorize everything at once
4. **Use Telescope for Everything**: `<space>ff` is your best friend
5. **Practice Macros**: Record once, replay 100 times
6. **Terminal Integration**: `<Ctrl-/>` keeps you in flow
7. **Git with LazyGit**: `<space>gg` for visual git management
8. **Format on Save**: Already enabled in LazyVim!
9. **Use Marks**: `ma` to mark, `'a` to jump back
10. **Search with ***: Put cursor on word, press `*` to find all occurrences

---

## 🎯 DAILY PRACTICE ROUTINE

### Week 1: Basic Movement
- Master `hjkl`, `w`, `b`, `0`, `$`
- Practice `gg`, `G`, `Ctrl-d`, `Ctrl-u`
- Use `f{char}` and `;` on every line

### Week 2: Text Objects
- `ciw`, `caw` on every word change
- `ci"`, `ci(`, `ci{` when editing
- `dip`, `yip` for paragraphs

### Week 3: LazyVim Features
- Use `<space>ff` for EVERY file open
- Use `<space>fg` instead of grep
- Practice `gd`, `gr`, `K` when coding

### Week 4: Advanced
- Record your first macro
- Use visual block mode
- Master surround commands

---

## 📚 LEARNING RESOURCES

- **In Neovim**: Type `:Tutor` for interactive tutorial
- **LazyVim Docs**: https://www.lazyvim.org
- **Vim Adventures**: Game to learn Vim (vimadventures.com)
- **This Cheatsheet**: Keep it open while working!

---

## 🆘 EMERGENCY EXITS

**Stuck in Vim?**
- `Esc` - Get to normal mode
- `:q!` - Quit without saving
- `<space>qq` - Quit all

**Undo Mistakes:**
- `u` - Undo
- `Ctrl-r` - Redo
- `:earlier 5m` - Go back 5 minutes in time!

**Lost Your Place?**
- `Ctrl-o` - Jump to previous location
- `''` - Jump to last position
- `<space>fr` - Recent files

---

## 🎉 REMEMBER

> "Vim is not about memorizing hundreds of commands.
> It's about learning the language of editing.
> Once you understand the grammar (verbs + nouns),
> you can speak fluently!"

- **Verbs**: `d` (delete), `c` (change), `y` (yank), `v` (visual)
- **Nouns**: `w` (word), `s` (sentence), `p` (paragraph), `t` (tag)
- **Modifiers**: `i` (inside), `a` (around), `t` (till), `f` (find)

**Combine them**: `ciw` = Change Inside Word 🎯

---

**Created by:** Claude  
**For:** Your LazyVim/Omarchy Tokyo Night Setup 🌃  
**Last Updated:** November 2, 2025  

**Quick Access:** `nvim ~/lazyvim-cheatsheet.md` or create alias `cheat`

---

🚀 **Happy Vimming! Practice makes perfect!** 🚀
