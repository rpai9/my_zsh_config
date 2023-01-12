# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.


source "/Users/rpai/zsh_themes/agnoster.zsh-theme"


prompt_context() {
  # Custom (Random emoji)
  MINUTE_TRC=$(date +%M)
  emojis_1=("🐈" "🔥" "🚀" "💡" "😼" "😹" "🙀" "😻" "😽" "😾" "😺" "😸")
  emojis_2=("🙈" "🙉" "🙊" "🐵" "🦊" "🦁" "🐯" "🐮" "🐰" "🐼" "🧸" "🐿️")    

  if (($MINUTE_TRC % 2 != 0)); then
    RAND_EMOJI_N=$(( $RANDOM % ${#emojis_1[@]} + 1))
    prompt_segment black default "%(!.%F{red}.%F{red})%n%F{green}@%F{red}%m %F{reset} ${emojis_1[$RAND_EMOJI_N]} "
  else
    RAND_EMOJI_N=$(( $RANDOM % ${#emojis_2[@]} + 1))
    prompt_segment black default "%(!.%F{red}.%F{red})%n%F{green}@%F{red}%m %F{reset} ${emojis_2[$RAND_EMOJI_N]} "
  fi
}

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
alias ll="ls -alG"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/rpai/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/rpai/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/rpai/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/rpai/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/rpai/.rd/bin:$PATH"