# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export LANG=en_US.UTF-8
#User specific aliases and functions
alias bashrc="vim ~/.bashrc && source ~/.bashrc"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/gorkhover/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/gorkhover/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/gorkhover/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/gorkhover/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# switch to zsh

if [ -f $HOME/local/bin/zsh ] && [[ $- == *i* ]] 
then
        echo "Type y to run felix' zsh setup with tmux, bat, htop, ohmyzsh, proxied curl, proxychains, clang, fzf, and modern git:"
        read line
        [ "$line" = y ] && exec $HOME/local/bin/zsh -l
else
	local="$HOME/local"
	export PATH="$PATH:$local/bin"
	export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$local/lib"
fi


