if status is-interactive
# Commands to run in interactive sessions can go here
end

# Removing the fish greeting message
set fish_greeting ""

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# General path
export PATH="$PATH:$HOME/scripts/bin/"

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

# Gemini env
set path ~/api/.gemini
if test -f $path 
source $path
end

function ff
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# Zoxide 
eval "$(zoxide init fish)"
