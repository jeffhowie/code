if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

export ANT_OPTS="-Xmx1024m -Xms512m"
PATH="/usr/local/bin:${PATH}"
# export PS1='\u@\H:\w$ '
# Set git autocompletion and PS1 integration
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
 
GIT_PS1_SHOWDIRTYSTATE=true
 
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi
 
PS1='\[\033[39m\]\u@\h\[\033[00m\]:\[\033[39m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

