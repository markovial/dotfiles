# single quote inside alias : '"'"' 

# general aliases

alias ls='ls --color=auto --group-directories-first'
alias ll='ls -lFAX'
alias lt='ls -lgGFAX --human-readable'
alias mkdir='mkdir -p'
alias grep='grep --color=auto'
alias xrs='xrdb ~/.Xresources'
alias open='xdg-open'


#alias music='ncmpcpp'

# Colorize commands when possible.
alias \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	ccat="highlight --out-format=ansi"

# Config file easy access aliases


alias c-bash='vim ~/.bashrc'
alias c-vim='vim ~/.vimrc'
alias c-i3='vim ~/.config/i3/config'
alias c-poly='vim ~/.config/polybar/config'
alias c-ranger='vim ~/.config/ranger/rifle.conf'
alias c-rofi='vim ~/.config/rofi/config'
alias c-htop='vim ~/.config/htop/htoprc'
alias c-xrs='vim ~/.Xresources'
alias c-compton='vim ~/.config/compton/compton.conf'
alias c-mutt='vim ~/.config/mutt/muttrc'
alias c-ncmpcpp='vim ~/.config/ncmpcpp/config'
alias c-cava='vim ~/.config/cava/config'
alias c-dunst='vim ~/.config/dunst/dunstrc'
alias c-firefox='cd ~/.mozilla/firefox/ho69m9le.default-release/chrome/'
alias c-cava='vim ~/.config/cava/cava'
alias c-alacritty='vim ~/.config/alacritty/alacritty.yml'


# Editor based aliases

alias vim='nvim'
alias vi='vim'

# Grep display aliases

alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias myip='curl http://ipecho.net/plain; echo'

# External package aliases

alias yt-mp3='youtube-dl --ignore-errors --extract-audio --audio-format mp3'
#alias yt-ch='youtube-dl -F'

alias yt-dl='youtube-dl -f 22'

# append playlist ID and not video id to following command
alias yt-pl='youtube-dl -i'

# function instead of an alias cause i wanted to grep the output in one line
function yt-ch { youtube-dl -F "$1" | grep "best" ;}
export -f yt-ch


# QOL aliases
#alias web-dl='./scripts/shell/website_download.sh'
#alias phone-ch='simple-mtpfs -l'
#alias mt-ph='simple-mtpfs --device 1 /media/phone/'
#alias umt-ph='fusermount -u ~/media/phone/'
#alias mt-usb='simple-mtpfs --device 1 /media/USB/'
#alias web='~/scripts/shell/online_search.sh'

# surfin through the terminal POG
alias ddg='sr -browser=w3m duckduckgo'
alias wiki='sr -browser=w3m wikipedia'
alias dict='cd ~/Scripts/perl/german_dict/ ; perl wörterbuch.pl'

alias weather='curl wttr.in'





