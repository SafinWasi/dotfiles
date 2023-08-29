#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
PS1='\[\e[0m\][\[\e[0m\]\u\[\e[0m\]@\[\e[0m\]\h\[\e[0m\]]\[\e[0m\]\w\[\e[0m\](\[\e[0m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2)\[\e[0m\])\[\e[0m\]$ \[\e[0m\]' 
# Path exports
export PATH=/home/safinwasi/.local/share/gem/ruby/3.0.0/bin:$PATH
export PATH=/home/safinwasi/.local/bin:$PATH


# ssh-agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi

if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi


PATH="/home/safinwasi/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/safinwasi/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/safinwasi/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/safinwasi/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/safinwasi/perl5"; export PERL_MM_OPT;


eval "$(pyenv init -)"

export MOZ_ENABLE_WAYLAND=1
export XDG_CURRENT_DESKTOP=sway
alias config='/sbin/git --git-dir=/home/safinwasi/.cfg/ --work-tree=/home/safinwasi'
export GPG_TTY=$(tty)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/safinwasi/Gluu/google-cloud-sdk/path.bash.inc' ]; then . '/home/safinwasi/Gluu/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/safinwasi/Gluu/google-cloud-sdk/completion.bash.inc' ]; then . '/home/safinwasi/Gluu/google-cloud-sdk/completion.bash.inc'; fi
