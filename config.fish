if status is-interactive
    # Commands to run in interactive sessions can go here
end
alias edit="code ."
alias editx="code . && exit"
alias phpon="sudo systemctl start httpd && sudo systemctl start mariadb"
alias phpoff="sudo systemctl stop httpd && sudo systemctl stop mariadb"
alias publicip="curl http://checkip.amazonaws.com"
alias ss="systemctl suspend"
alias take-snapshot="sudo btrfs subvolume snapshot / /Backup/$(date +'%d-%b-%Y')"



# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
