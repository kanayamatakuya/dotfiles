# starship
eval "$(starship init zsh)"

# antidote
zsh_plugins_txt="$HOME/.zsh_plugins.txt"
zsh_plugins_sh="$HOME/.zsh_plugins.zsh"

if [[ -f "/opt/homebrew/opt/antidote/share/antidote/antidote.zsh" ]]; then
  source "/opt/homebrew/opt/antidote/share/antidote/antidote.zsh"
  if [[ ! "$zsh_plugins_sh" -nt "$zsh_plugins_txt" ]]; then
    antidote bundle < "$zsh_plugins_txt" > "$zsh_plugins_sh"
  fi
  source "$zsh_plugins_sh"
fi

# Alias
alias cat="bat --style=plain --paging=never"
alias ls="eza --icons --group-directories-first"
alias ll="eza -lh --icons --git --group-directories-first"
alias la="eza -lha --icons --git --group-directories-first"
alias top="btop"

