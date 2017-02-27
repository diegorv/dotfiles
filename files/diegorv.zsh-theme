# based on
# - https://github.com/radmonac/zeta-zsh-theme/blob/master/zeta.zsh-theme
# - https://github.com/tylerreckart/odin/blob/master/odin.zsh-theme
# - https://github.com/3rd-Eden/.files/blob/master/zsh/.zsh/themes/3rdEden.zsh-theme
# - https://github.com/fnando/dotfiles/blob/master/files/.zsh/prompt.sh

# Colors
GRAY=$FG[008]
WHITE=$FG[231]
LIGHT_PURPLE=$FG[219]
DARK_PURPLE=$FG[004]
BLUE=$FG[159]
YELLOW=$FG[003]
RED=$FG[009]
GREEN=$FG[002]

#
PROMP_ICON='›'

# COLOR CONFIGS
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="[$YELLOW"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="$reset_color]"

ZSH_THEME_GIT_PROMPT_PREFIX="$reset_color("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"

ZSH_THEME_GIT_PROMPT_SEPARATOR="|"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[red]%}%{●%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✖%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{…%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}%{✔%G%}"


ZSH_THEME_GIT_TIME_SINCE_COMMIT_SHORT=$GREEN
ZSH_THEME_GIT_TIME_SHORT_COMMIT_MEDIUM=$YELLOW
ZSH_THEME_GIT_TIME_SINCE_COMMIT_LONG=$RED
ZSH_THEME_GIT_TIME_SINCE_COMMIT_NEUTRAL=$WHITE

# Determine the time since last commit. If branch is clean,
# use a neutral color, otherwise colors will vary according to time.
function git_time_since_commit() {
  if git rev-parse --git-dir > /dev/null 2>&1; then
    # Only proceed if there is actually a commit.
    if [[ $(git log 2>&1 > /dev/null | grep -c "^fatal: bad default revision") == 0 ]]; then
      # Get the last commit.
      last_commit=`git log --pretty=format:'%at' -1 2> /dev/null`
      now=`date +%s`
      seconds_since_last_commit=$((now-last_commit))

      # Totals
      MINUTES=$((seconds_since_last_commit / 60))
      HOURS=$((seconds_since_last_commit/3600))

      # Sub-hours and sub-minutes
      DAYS=$((seconds_since_last_commit / 86400))
      SUB_HOURS=$((HOURS % 24))
      SUB_MINUTES=$((MINUTES % 60))

      if [[ -n $(git status -s 2> /dev/null) ]]; then
          if [ "$MINUTES" -gt 30 ]; then
              COLOR="$ZSH_THEME_GIT_TIME_SINCE_COMMIT_LONG"
          elif [ "$MINUTES" -gt 10 ]; then
              COLOR="$ZSH_THEME_GIT_TIME_SHORT_COMMIT_MEDIUM"
          else
              COLOR="$ZSH_THEME_GIT_TIME_SINCE_COMMIT_SHORT"
          fi
      else
          COLOR="$ZSH_THEME_GIT_TIME_SINCE_COMMIT_NEUTRAL"
      fi

      if [ "$HOURS" -gt 24 ]; then
          echo "$COLOR${DAYS}d"
      elif [ "$MINUTES" -gt 60 ]; then
          echo "$COLOR${HOURS}h${SUB_MINUTES}m"
      else
          echo "$COLOR${MINUTES}m"
      fi
    else
        COLOR="$ZSH_THEME_GIT_TIME_SINCE_COMMIT_NEUTRAL"
        echo "$COLOR"
    fi
  fi
}

function _my_home_folder() {
  echo "${DARK_PURPLE}${PWD/#$HOME/~}"
}

function _my_ruby_version() {
  ruby_version=`ruby -e "puts RUBY_VERSION"`

  if [ -f Gemfile.lock ]; then
    rails_version=`cat Gemfile.lock | grep -E " +rails \([0-9]+" | sed 's/ *rails (\(.*\))/\1/'`
  fi

  if [[ "$rails_version" != "" ]]; then
    rails_prompt="$GRAY#$LIGHT_PURPLE${rails_version}"
  fi

  echo "${GRAY}[${WHITE}${USER}${GRAY}|${BLUE}${ruby_version}${rails_prompt}${GRAY}]"
}

function _my_git_status() {
  echo "$(git_super_status)"
}

function _my_custom_prompt() {
  echo "\n$(_my_ruby_version) $(_my_home_folder) $(_my_git_status)\n$reset_color$PROMP_ICON "
}

PROMPT='$(_my_custom_prompt)'
RPROMPT='$(git_prompt_short_sha) $(git_time_since_commit) %{$reset_color%}'
