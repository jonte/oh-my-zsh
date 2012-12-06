set_prompt(){
  if [[ $COLUMNS -lt 60 ]]; then
    PROMPT='%{$fg_bold[green]%n%}%  %{$fg[cyan]%}%c %{$fg[yellow]%}$%{$reset_color%} % %{$reset_color%}'
  else
    PROMPT='%{$fg_bold[green]%n%}% %{$fg_bold[red]%} in%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'
  fi
}

TRAPWINCH(){
  set_prompt
}

set_prompt

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}$%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
