echo "hi jay"

# Vars
TODAYS_EDITOR="nvim"
TE="$TODAYS_EDITOR"



# Aliases
alias JKz='JKgoto.sh $TE ~/.zshrc'
alias JKb='JKgoto.sh $TE ~/.bashrc'
alias JKn='JKgoto.sh $TE ~/.config/niri/config.kdl'
alias JKa='JKgoto.sh $TE ~/.config/alacritty'
alias JKnv='JKgoto.sh $TE ~/.config/nvim'
alias JKt='JKgoto.sh $TE ~/.tmux.conf'
alias JKw='JKgoto.sh $TE ~/.config/waybar'

alias JSs='source ~/.zshrc'
alias JSt='tmux source-file ~/.tmux.conf'

alias SYSR='sudo reboot'
alias SYSO='sudo poweroff'

alias py='~/.python/bin/python3 "$@"'
alias JSp="source ~/.python/bin/activate"

alias ls='eza --color=always --icons=always --group-directories-first -h'
alias ll='eza --color=always --icons=always --group-directories-first -lh'
alias sl='eza --color=always --icons=always --group-directories-first -A'
alias ss='eza --color=always --icons=always --group-directories-first -lAh'
alias tree='eza --tree --color=always --icons=always -h'
alias eert='eza --tree --color=always --icons=always -A'

alias fetchy='clear && fastfetch && read something'



# Customization
# Prompt
export PS1='%F{blue}%n@%m %F{green}zsh %F{magenta}%~
 %F{blue}>%f '
