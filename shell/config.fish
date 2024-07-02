if status is-interactive
# Commands to run in interactive sessions can go here
end

# Removing the fish greeting message
set fish_greeting ""

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Bin path
export PATH="$PATH:$HOME/.local/bin:$HOME/go/bin"

# Editor
export EDITOR="/bin/vim"

# Mew path
export PATH="$PATH:$HOME/.mew/bin/"

# Aliases
set path ~/.aliases
if test -f $path 
source $path
end

# Gemini
set path ~/api/.gemini
if test -f $path 
source $path
end

