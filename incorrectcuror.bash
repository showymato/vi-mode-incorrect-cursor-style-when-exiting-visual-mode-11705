# .zshrc

# Load vi-mode plugin
plugins+=(vi-mode)

# Function to set cursor shape in normal mode
function set_cursor_normal() {
    echo -ne "\e[2 q" # Change cursor to block shape
}

# Function to set cursor shape in visual mode
function set_cursor_visual() {
    echo -ne "\e[5 q" # Change cursor to vertical bar shape
}

# Function to switch to normal mode in Zsh's vi-mode
function switch_to_normal_mode() {
    zle vi-cmd-mode # Switch to normal mode
    set_cursor_normal # Set cursor shape to block
}

# Function to switch to visual mode in Zsh's vi-mode
function switch_to_visual_mode() {
    zle vi-char-invisible-mode # Switch to visual mode
    set_cursor_visual # Set cursor shape to vertical bar
}

# Bind keys to switch modes and set cursor shapes
bindkey -v 'h' switch_to_normal_mode
bindkey -v 'l' switch_to_normal_mode
bindkey -v 'v' switch_to_visual_mode

# Rest of your Zsh configuration...
