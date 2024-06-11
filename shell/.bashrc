# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
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


# User defined custom configs:
alias edit="code ."
alias editx="code . && exit"
alias phpon="sudo systemctl start httpd && sudo systemctl start mariadb"
alias phpoff="sudo systemctl stop httpd && sudo systemctl stop mariadb"
alias publicip="curl http://checkip.amazonaws.com"
alias ss="systemctl suspend"
alias take-snapshot="sudo btrfs subvolume snapshot / /Backup/$(date +'%d-%b-%Y')"
alias gnomequit="gnome-session-quit --logout"
alias gnomequitx="gnome-session-quit --logout --no-prompt"

# mew path
export PATH="$PATH:$HOME/.mew/bin/"
