# Inspired lukerandall.zsh-theme & lambda_mod.zsh-theme

local RED="%{$fg_bold[red]%}"
local YELLOW="%{$fg_bold[yellow]%}"
local GREEN="%{$fg_bold[green]%}"
local BLACK="%{$fg_bold[black]%}"
local CYAN="%{$fg_bold[cyan]%}"
local WHITE="%{$fg_bold[white]%}"

local RETURN_CODE="%(?..$CYAN%?❯ %{$reset_color%})"
local ARROW="%(?:%{$fg_bold[green]%}❯ :%{$fg_bold[red]%}❯ )"

local USER_DATA="$RED%n@%m%{$reset_color%}"
local DIR_DATA="$BLACK%2~%{$reset_color%}"

function my_git_prompt_info() {
  if type git &>/dev/null && git rev-parse --git-dir > /dev/null 2>&1; then
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    GIT_STATUS=$(git_prompt_status)
    [[ -n $GIT_STATUS ]] && GIT_STATUS=" $GIT_STATUS"
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$GIT_STATUS$ZSH_THEME_GIT_PROMPT_SUFFIX$(parse_git_dirty)"
  else
    echo "${BLACK}$ "
  fi
}

PROMPT='${ARROW}$USER_DATA $DIR_DATA $(my_git_prompt_info)%{$reset_color%}'
#❯ »  λ ‹› ↵

ZSH_THEME_GIT_PROMPT_PREFIX="${YELLOW}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="${RED}λ "
ZSH_THEME_GIT_PROMPT_CLEAN="${GREEN}λ "
