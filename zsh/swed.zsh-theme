local user='%{$fg[magenta]%}%n@%{$fg[magenta]%}%m%{$reset_color%}'
local pwd="%{$fg[blue]%}%~%{$reset_color%}"
local ret_code="%(?..%{$fg[red]%}%?↵ %{$reset_color%})"
#local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='${pwd} ${ret_code}$(git_prompt_info) $ '
#RPROMPT='${ret_status}$(git_prompt_info)'
RPROMPT=""

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}[%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}] %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}]"
