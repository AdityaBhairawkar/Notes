# **Vim Editor: A Comprehensive Guide**

Vim (Vi IMproved) is a highly configurable, powerful, and efficient text editor. It is an improved version of the **Vi** editor and is available on almost all Unix-based systems. Vim is known for its modal editing, which allows different modes for inserting text, navigating, and executing commands.

---

## **Modes in Vim**
Vim operates in different modes, each serving a distinct purpose:

1. **Normal Mode (Command Mode)** – Default mode for navigation and commands.
2. **Insert Mode** – For inserting and editing text.
3. **Visual Mode** – For selecting text.
4. **Command-line Mode** – For executing commands (e.g., saving, quitting).

---

## **Basic Vim Commands**
### **1. Starting and Exiting Vim**
| Command | Description |
|---------|-------------|
| `vim filename` | Open a file in Vim |
| `:q` or `:quit` | Quit Vim |
| `:q!` | Quit without saving |
| `:w` | Save file |
| `:wq` or `:x` or `ZZ` | Save and quit |
| `:w filename` | Save as a new file |
| `:e filename` | Open another file |

---

### **2. Navigation (Normal Mode)**
| Command | Description |
|---------|-------------|
| `h` | Move left |
| `j` | Move down |
| `k` | Move up |
| `l` | Move right |
| `w` | Move to next word |
| `b` | Move to previous word |
| `0` (zero) | Move to start of line |
| `$` | Move to end of line |
| `gg` | Go to the first line |
| `G` | Go to the last line |
| `:n` | Go to line `n` (e.g., `:10` → line 10) |
| `Ctrl + f` | Page down |
| `Ctrl + b` | Page up |

---

### **3. Inserting and Editing Text**
| Command | Description |
|---------|-------------|
| `i` | Insert before cursor |
| `a` | Insert after cursor |
| `I` | Insert at start of line |
| `A` | Insert at end of line |
| `o` | Insert new line below |
| `O` | Insert new line above |
| `s` | Delete character and insert |
| `S` | Delete entire line and insert |
| `r` | Replace a single character |
| `R` | Replace multiple characters (overwrite) |
| `u` | Undo last change |
| `Ctrl + r` | Redo |

---

### **4. Deleting Text**
| Command | Description |
|---------|-------------|
| `x` | Delete character under cursor |
| `X` | Delete character before cursor |
| `dw` | Delete word |
| `dd` | Delete entire line |
| `D` | Delete from cursor to end of line |
| `d$` | Same as `D` |
| `dG` | Delete from cursor to end of file |
| `dgg` | Delete from cursor to start of file |

---

### **5. Copy (Yank), Cut, and Paste**
| Command | Description |
|---------|-------------|
| `yy` | Yank (copy) current line |
| `yw` | Yank word |
| `y$` | Yank to end of line |
| `p` | Paste after cursor |
| `P` | Paste before cursor |
| `dd` (then `p`) | Cut and paste line |

---

### **6. Visual Mode (Text Selection)**
| Command | Description |
|---------|-------------|
| `v` | Enter visual mode (character-wise) |
| `V` | Enter visual line mode |
| `Ctrl + v` | Enter visual block mode |
| `y` | Yank (copy) selected text |
| `d` | Delete selected text |
| `>` | Indent selected text |
| `<` | Unindent selected text |

---

### **7. Search and Replace**
| Command | Description |
|---------|-------------|
| `/pattern` | Search forward for `pattern` |
| `?pattern` | Search backward for `pattern` |
| `n` | Next match |
| `N` | Previous match |
| `:%s/old/new/g` | Replace all `old` with `new` globally |
| `:%s/old/new/gc` | Replace with confirmation |
| `:s/old/new/g` | Replace in current line |

---

### **8. Working with Multiple Files**
| Command | Description |
|---------|-------------|
| `:e filename` | Open another file |
| `:bn` | Next buffer |
| `:bp` | Previous buffer |
| `:bd` | Close buffer |
| `:sp filename` | Split window horizontally |
| `:vsp filename` | Split window vertically |
| `Ctrl + w + h/j/k/l` | Navigate between splits |
| `Ctrl + w + c` | Close current split |

---

### **9. Advanced Commands**
| Command | Description |
|---------|-------------|
| `.` | Repeat last command |
| `:set number` | Show line numbers |
| `:set nonumber` | Hide line numbers |
| `:set paste` | Enable paste mode (avoid auto-indent) |
| `:set nopaste` | Disable paste mode |
| `:help command` | Get help on a command |

---

## **Vim Configuration (~/.vimrc)**
Vim can be customized using a `.vimrc` file. Example configurations:

```vim
set number           " Show line numbers
set tabstop=4        " Set tab width to 4 spaces
set shiftwidth=4     " Indent width
set expandtab        " Convert tabs to spaces
syntax on            " Enable syntax highlighting
set hlsearch         " Highlight search results
set ignorecase       " Case-insensitive search
set smartcase        " Case-sensitive if uppercase used
```

---

