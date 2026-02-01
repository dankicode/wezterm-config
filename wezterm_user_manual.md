# Wezterm User Manual

Quick reference guide for keybindings and features in this Wezterm configuration.

## Table of Contents
- [Modifier Keys](#modifier-keys)
- [Keybindings](#keybindings)
  - [General/Utility](#generalutility)
  - [Copy/Paste](#copypaste)
  - [Cursor Movement](#cursor-movement)
  - [Tabs](#tabs)
  - [Windows](#windows)
  - [Panes](#panes)
  - [Background Images](#background-images)
  - [Modal Modes (Key Tables)](#modal-modes-key-tables)
  - [Mouse Bindings](#mouse-bindings)
- [Features](#features)
  - [Status Bar](#status-bar)
  - [Background Image System](#background-image-system)
  - [Launch Menu & Domains](#launch-menu--domains)
  - [Configuration Structure](#configuration-structure)
- [Special Features & Tips](#special-features--tips)

---

## Modifier Keys

Platform-specific modifier key mappings:

| Key Name | macOS | Windows/Linux |
|----------|-------|---------------|
| `SUPER` | `Cmd` (⌘) | `Alt` |
| `SUPER_REV` | `Cmd+Ctrl` (⌘^) | `Alt+Ctrl` |
| `LEADER` | `Cmd+Ctrl+.` | `Alt+Ctrl+.` |

---

## Keybindings

### General/Utility

| Keybinding | Description |
|------------|-------------|
| `F1` | Enter copy/selection mode |
| `F2` | Open command palette |
| `F3` | Show launcher (all items) |
| `F4` | Show launcher (tabs only) |
| `F5` | Show launcher (workspaces only) |
| `F11` | Toggle fullscreen |
| `F12` | Show debug overlay |
| `SUPER+f` | Search text in terminal (case insensitive) |
| `SUPER_REV+u` | Quick select and open URLs |

### Copy/Paste

| Keybinding | Description |
|------------|-------------|
| `Ctrl+Shift+c` | Copy selection to clipboard |
| `Ctrl+Shift+v` | Paste from clipboard |

### Cursor Movement

| Keybinding | Description |
|------------|-------------|
| `SUPER+LeftArrow` | Move cursor to line start |
| `SUPER+RightArrow` | Move cursor to line end |
| `SUPER+Backspace` | Clear line (doesn't work in PowerShell/cmd) |

### Tabs

#### Spawn & Close

| Keybinding | Description |
|------------|-------------|
| `SUPER+t` | Create new tab (default shell) |
| `SUPER_REV+t` | Create new tab in WSL Ubuntu |
| `SUPER_REV+w` | Close current tab (no confirmation) |

#### Navigation

| Keybinding | Description |
|------------|-------------|
| `SUPER+[` | Switch to previous tab |
| `SUPER+]` | Switch to next tab |
| `SUPER_REV+[` | Move current tab left |
| `SUPER_REV+]` | Move current tab right |

#### Title Management

| Keybinding | Description |
|------------|-------------|
| `SUPER+0` | Rename current tab (locks title) |
| `SUPER_REV+0` | Reset tab title to auto-generated |

#### Toggle Tab Bar

| Keybinding | Description |
|------------|-------------|
| `SUPER+9` | Show/hide the tab bar |

### Windows

| Keybinding | Description |
|------------|-------------|
| `SUPER+n` | Create new window |
| `SUPER+=` | Increase window size by 50px |
| `SUPER+-` | Decrease window size by 50px |

### Panes

#### Split

| Keybinding | Description |
|------------|-------------|
| `SUPER+\` | Split pane vertically (side-by-side) |
| `SUPER_REV+\` | Split pane horizontally (top-bottom) |

#### Zoom & Close

| Keybinding | Description |
|------------|-------------|
| `SUPER+Enter` | Zoom/unzoom current pane (fullscreen toggle) |
| `SUPER+w` | Close current pane (no confirmation) |

#### Navigation

| Keybinding | Description |
|------------|-------------|
| `SUPER_REV+k` | Move focus to pane above |
| `SUPER_REV+j` | Move focus to pane below |
| `SUPER_REV+h` | Move focus to left pane |
| `SUPER_REV+l` | Move focus to right pane |
| `SUPER_REV+p` | Interactive pane swap selector |

#### Scrolling

| Keybinding | Description |
|------------|-------------|
| `SUPER+u` | Scroll up 5 lines |
| `SUPER+d` | Scroll down 5 lines |
| `PageUp` | Scroll up 0.75 pages |
| `PageDown` | Scroll down 0.75 pages |

### Background Images

| Keybinding | Description |
|------------|-------------|
| `SUPER+/` | Select random background image |
| `SUPER+,` | Previous background image |
| `SUPER+.` | Next background image |
| `SUPER_REV+/` | Fuzzy search background images |
| `SUPER+b` | Toggle focus mode (image/solid background) |

### Modal Modes (Key Tables)

Modal modes are activated using the `LEADER` key followed by a mode key.

#### Entering Modes

| Keybinding | Description |
|------------|-------------|
| `LEADER+f` | Enter font resize mode |
| `LEADER+p` | Enter pane resize mode |

#### In Font Resize Mode

| Key | Description |
|-----|-------------|
| `k` | Increase font size |
| `j` | Decrease font size |
| `r` | Reset to default size |
| `q` or `Esc` | Exit mode |

#### In Pane Resize Mode

| Key | Description |
|-----|-------------|
| `k` | Resize pane upward |
| `j` | Resize pane downward |
| `h` | Resize pane left |
| `l` | Resize pane right |
| `q` or `Esc` | Exit mode |

### Mouse Bindings

| Mouse Action | Description |
|--------------|-------------|
| `Ctrl+LeftClick` | Open URL under cursor |

---

## Features

### Status Bar

#### Left Status Bar
- Displays active key table name when in modal mode (orange/peach segment)
- Shows key icon when LEADER is active
- Hidden when no mode is active

#### Right Status Bar
- **Date/Time**: Shows current time in `%a %H:%M:%S` format (e.g., "Mon 14:23:45")
- **Battery Indicator**:
  - Displays charge percentage
  - Animated icon that changes based on charging state and level
  - Different icons for charging vs. discharging

### Background Image System

Your config includes 15 wallpaper images that can be cycled through:

- **Cycle Forward**: `SUPER+.` - Move to next image
- **Cycle Backward**: `SUPER+,` - Move to previous image
- **Random**: `SUPER+/` - Jump to random image
- **Search**: `SUPER_REV+/` - Fuzzy search for specific image by filename
- **Focus Mode**: `SUPER+b` - Toggle between image background and solid color (distraction-free mode)

Background settings:
- Opacity: 0.96
- Images stored in: `/backdrops/` directory

### Launch Menu & Domains

#### Accessing Launch Menu
- Press `F3` for full launcher
- Right-click the new tab button for shell selection with fuzzy search

#### Available Shells by Platform

**Windows:**
- PowerShell Core (default)
- PowerShell Desktop
- Command Prompt
- Nushell
- Msys2
- Git Bash

**macOS:**
- Zsh (default)
- Bash
- Fish
- Nushell

**Linux:**
- Fish (default)
- Bash
- Zsh

#### Configured Domains

**WSL Domain (Windows only):**
- Name: `WSL:Ubuntu`
- User: kevin
- Default directory: `/home/kevin`
- Default shell: fish
- Quick access: `SUPER_REV+t`

**SSH Domain:**
- Name: `wsl.ssh`
- Connects to localhost
- Used for yazi image preview on Windows via WSL

### Configuration Structure

This Wezterm config uses a modular architecture:

```
/Users/danki/.config/wezterm/
├── wezterm.lua           # Main entry point
├── config/               # Configuration modules
│   ├── init.lua         # Config class with append pattern
│   ├── appearance.lua   # Visual settings
│   ├── bindings.lua     # Keybindings and key tables
│   ├── domains.lua      # SSH/WSL/Unix domains
│   ├── fonts.lua        # Font configuration
│   ├── general.lua      # General behavior
│   └── launch.lua       # Shell launch menu
├── utils/               # Utilities
│   ├── backdrops.lua    # Background image manager
│   ├── cells.lua        # Status bar formatting
│   ├── gpu-adapter.lua  # GPU/graphics selector
│   ├── math.lua         # Math utilities
│   ├── opts-validator.lua # Options validator
│   └── platform.lua     # Platform detection
├── events/              # Event handlers
│   ├── tab-title.lua    # Custom tab titles
│   ├── left-status.lua  # Left status bar
│   ├── right-status.lua # Right status bar
│   └── new-tab-button.lua # Tab button handler
└── colors/
    └── custom.lua       # Catppuccin Mocha theme
```

**Config Pattern:**
- Uses a builder pattern via the `Config` class
- Each module exports settings using `Config:append()`
- Warns on duplicate key detection
- Centralized in `wezterm.lua`

---

## Special Features & Tips

### Tab Indicators
Tabs display special icons based on context:
- **Shield icon**: Administrator/elevated permissions
- **Linux icon**: WSL tabs
- **Circle/numbered badges**: Unseen output indicator

### Tab Title Locking
- `SUPER+0`: Lock tab title (manual rename)
- `SUPER_REV+0`: Unlock to auto-generated title
- Auto-generated titles show: process name + pane title

### Quick Launchers
- `F3`: Show all launcher items (tabs, workspaces, commands)
- `F4`: Quick tab switcher only
- `F5`: Workspace switcher only

### Performance Features
- **GPU Acceleration**: WebGPU with automatic best adapter selection
- **120 FPS max**: High performance rendering
- **Platform-optimized graphics**:
  - Windows: Dx12 → Vulkan → OpenGL
  - Linux: Vulkan → OpenGL
  - macOS: Metal

### Visual Settings
- **Cursor**: Blinking block (650ms blink rate)
- **Scrollback**: 20,000 lines
- **Tab bar**: Max 25 characters width
- **Color scheme**: Modified Catppuccin Mocha
- **Font**: FiraCode Nerd Font Mono, Medium weight
  - Size: 12pt (macOS), 9pt (Windows/Linux)

### Link Detection
Enhanced hyperlink detection supports URLs in:
- Parentheses: `(url)`
- Square brackets: `[url]`
- Curly braces: `{url}`
- Angle brackets: `<url>`
- Quotes: `"url"` or `'url'`
- Email addresses with mailto: links

### Scrollback Behavior
- Exit behavior: Close on clean exit only
- Config auto-reload: Enabled
- Visual bell: Enabled (uses red color flash)
