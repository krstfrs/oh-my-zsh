(( EUID == 0 )) && ucolor=red || ucolor=green

PTS=`ps h -p $$ | awk '{print $2}'`
ps axu | grep -E "sshd:[^\@]*@${PTS}" >/dev/null 2>&1 && hostcolor=yellow || hostcolor=cyan


PROMPT='%{$fg[$ucolor]%}%n%{$reset_color%}@%{$fg[$hostcolor]%}%m%{$reset_color%}: %{$fg[green]%}%0~%{$fg[red]%}%(?.. [%?]) %{$reset_color%}%% '
RPROMPT='$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
