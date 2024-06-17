if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Removing the fish greeting message
set fish_greeting ""

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Mew path
export PATH="$PATH:$HOME/.mew/bin/"

# Aliases
set path ~/.aliases
if test -f $path 
	source $path
end
