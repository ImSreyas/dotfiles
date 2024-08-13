# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:$HOME/go/bin" ]]
then
  PATH="$HOME/.local/bin:$HOME/bin:$HOME/go/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    if [ -f "$rc" ]; then
      . "$rc"
    fi
  done
fi

unset rc
. "$HOME/.cargo/env"

# Editor
export EDITOR="/bin/vim"

# mew path
export PATH="$PATH:$HOME/.mew/bin/"

# Alias
path=~/.aliases
if [[ -f $path ]]; then
  source $path
fi 
