# env vars
export TERM=wezterm

export HISTFILE=~/.zsh_history
export HISTSIZE=1000000
export SAVEHIST=1000000

export NODE_EXTRA_CA_CERTS="$(brew --prefix)/share/ca-certificates/cacert.pem"

# java
export JAVA_HOME=$(/usr/libexec/java_home)

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Github Copilot
eval "$(gh copilot alias -- zsh)"

# fzf
eval "$(fzf --zsh)"

export FZF_DEFAULT_COMMAND='fd --type file --hidden --no-ignore'
export FZF_DEFAULT_OPTS='\
  --height=40% \
  --layout=reverse \
  --border \
  --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
  --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
  --color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
  --color=selected-bg:#45475a \
  --multi'

# zoxide
eval "$(zoxide init zsh)"

# starship
eval "$(starship init zsh)"

# zsh setup
setopt COMBINING_CHARS

setopt INC_APPEND_HISTORY        # Add commands to history immediately
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# keymaps
[[ -f ~/.keymaps ]] && source ~/.keymaps

# zsh themes
source ~/.config/zsh-syntax-highlighting/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh

# zsh plugins
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# always source the plugins below at the end
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
