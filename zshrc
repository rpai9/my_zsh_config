##############################################Terminal Asethetics######################################################
# Path to the theme
source "/Users/${USER}/zsh_themes/agnoster.zsh-theme"

# Emoji changer every min
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
#####################################################################################################################
