# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias JKz='$TE ~/.zshrc'
alias JKn='$TE ~/.config/niri/config.kdl'
alias JKa='$TE ~/.config/alacritty/alacritty.toml'
alias JKat='$TE ~/.config/alacritty/theme.toml'
alias JKnv='$TE ~/.config/nvim'

# System
alias SYSR='sudo reboot'
alias SYSO='sudo poweroff'

# Listings
alias ls='eza --color=always --icons=always --group-directories-first -h'
alias ll='eza --color=always --icons=always --group-directories-first -lh'
alias sl='eza --color=always --icons=always --group-directories-first -A'
alias ss='eza --color=always --icons=always --group-directories-first -lAh'
alias tree='eza --tree --color=always --icons=always -h'
alias eert='eza --tree --color=always --icons=always -A'

# Random
alias JSs='source ~/.bashrc'

# Customization
# Prompt
export PS1='\[\e[34m\]\u@\h \[\e[32m\]bash \[\e[35m\]\w
 \[\e[34m\]>\[\e[0m\] '
