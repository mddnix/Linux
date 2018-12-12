# PS1
# ===
tty -s && export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 6)\]\h \[$(tput setaf 5)\]\w\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# Terminal font colors
# ====================
LS_COLORS=$LS_COLORS:'di=1;35:' ; export LS_COLORS

# Aliases
# =======
alias ll='ls -lh'
alias lll='ls -alh'
alias la='ls -A'
alias l='ls -CF'
alias l.='ls -ald .*'
alias lf.="ls -aldF .* | grep -v '\/$'"
alias ld.="ls -aldF .* | grep '\/$'"
alias vi=vim
#alias sudo='sudo '
alias pings='ping -c4 google.com'
alias nh='sudo nethogs enp3s0'
alias rml='rm !(lost+found)'
alias reboot='systemctl reboot'
alias poweroff='systemctl poweroff'
#alias yum=dnf
#alias dnf='dnf -4'
#alias cp='cp -v'
#alias mv='mv -v'
alias yt='/usr/local/bin/youtube-dl'
alias yta='/usr/local/bin/youtube-dl -x --audio-format mp3 --audio-quality 0'

