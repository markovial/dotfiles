# single quote inside alias : '"'"' 

# general aliases

alias ls='ls --color=auto --group-directories-first'
alias ll='ls -lFAX'
alias lt='ls -lgGFAX --human-readable'
alias mkdir='mkdir -p'
alias grep='grep --color=auto'
alias xrs='xrdb ~/.Xresources'
alias open='xdg-open'

# Colorize commands when possible.
alias \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	ccat="highlight --out-format=ansi"

# Config files easy access aliases
alias c-bash='vim ~/.bashrc'
alias c-vim='vim ~/.vimrc'
alias c-i3='vim ~/.config/i3/config'
alias c-poly='vim ~/.config/polybar/colorblocks/config.ini'
alias c-ranger='vim ~/.config/ranger/rifle.conf'
alias c-rofi='vim ~/.config/rofi/launchers/text/style_4'
alias c-htop='vim ~/.config/htop/htoprc'
alias c-xrs='vim ~/.Xresources'
alias c-compton='vim ~/.config/compton/compton.conf'
alias c-mutt='vim ~/.config/mutt/muttrc'
alias c-ncmpcpp='vim ~/.config/ncmpcpp/config'
alias c-cava='vim ~/.config/cava/config'
alias c-dunst='vim ~/.config/dunst/dunstrc'
alias c-firefox='cd ~/.mozilla/firefox/bz9srtah.default-release/chrome/'
alias c-cava='vim ~/.config/cava/cava'
alias c-alacritty='vim ~/.config/alacritty/alacritty.yml'
alias c-newsboat='vim ~/.config/newsboat/config'

# Editor based aliases

alias vim='nvim'
alias vi='vim'

alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"

# External package aliases

alias yt-ch='youtube-dl --list-formats'
alias yt-dl='youtube-dl -f bestvideo+bestaudio'
alias yt-mp3='youtube-dl --extract-audio --audio-format mp3 -f bestaudio'
alias yt-pl='youtube-dl --yes-playlist -f bestvideo+bestaudio'
alias yt-pl-mp3='youtube-dl --extract-audio --audio-format mp3 --yes-playlist -f bestaudio'
