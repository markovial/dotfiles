#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '

# uncomment to display time on prompt
#export PROMPT_COMMAND="echo -n \[\$(date +%H:%M:%S)\]\ "

# STUFF JUST NEEDED

export LC_ALL=en_US.UTF-8 
export EDITOR=nvim


# IMPORT ALIASES FILE

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# IMPORT FUNCTIONS FILE

if [ -f ~/.bash_functions ]; then
. ~/.bash_functions
fi

# run navi
# default is ctrl+g
#source <(echo "$(navi widget bash)")

