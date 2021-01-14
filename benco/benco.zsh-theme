# benco.zsh-theme 
# Rogerio Benco - 2021

# Use with a dark background and 256-color terminal!
# Tested only in Ubuntu 20.04LTS.
# You can set your computer name in the ~/.box-name file if you want.

# Based on fino.zsh-theme from .oh-my-zsh themes

function virtualenv_prompt_info {
  [[ -n ${VIRTUAL_ENV} ]] || return
  echo "${ZSH_THEME_VIRTUALENV_PREFIX:=[}${VIRTUAL_ENV:t}${ZSH_THEME_VIRTUALENV_SUFFIX:=]}"
}

function prompt_char {
  [[ -d .git ]] && echo $(print -P $'\U00b1') || ([[ $USER = 'root' ]] && echo '#' || echo '$')
}

function box_name {
  [ -f ~/.box-name ] && cat ~/.box-name || echo ${SHORT_HOST:-$HOST}
}

local ruby_env='$(ruby_prompt_info)'
local git_info='$(git_prompt_info)'
local virtualenv_info='$(virtualenv_prompt_info)'
local prompt_char='$(prompt_char)'

#ICONS
#start_icon=$(print -P $'\u256d\u2500')
start_icon=$(print -P $'\u2570\u2500')
#start_icon=$(print -P $'\U21B3')
git_branch_icon=$(print -P $'\UE0A0')
git_dirty=$(print -P $'\U2718')
git_clean=$(print -P $'\U2714')


PROMPT="${start_icon}${FG[033]}%n ${FG[239]}in %B${FG[226]}%3~%b${FG[239]}${git_info}${ruby_env}${virtualenv_info} ${prompt_char}%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX=" ${FG[239]}on%{$reset_color%} ${FG[001]} ${git_branch_icon} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="${FG[001]} $(print -P ${git_dirty})"
ZSH_THEME_GIT_PROMPT_CLEAN="${FG[040]} $(print -P ${git_clean})"

ZSH_THEME_RUBY_PROMPT_PREFIX=" ${FG[239]}using${FG[243]} ‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="›%{$reset_color%}"

export VIRTUAL_ENV_DISABLE_PROMPT=1
ZSH_THEME_VIRTUALENV_PREFIX=" ${FG[239]}using${FG[243]} «"
ZSH_THEME_VIRTUALENV_SUFFIX="»%{$reset_color%}"
