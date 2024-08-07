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
export FZF_DEFAULT_OPTS='--height=40% --layout=reverse --border'

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

# zsh plugins
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# always source the plugins below at the end
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# aliases
[[ -f ~/.config/zsh/.aliases ]] && source ~/.config/zsh/.aliases

# keymaps
[[ -f ~/.config/zsh/.keymaps ]] && source ~/.config/zsh/.keymaps 

