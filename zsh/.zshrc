# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

export PATH="/run/wrappers/bin:$HOME/.local/bin:$PATH"
export ZSH_COMPDUMP="$HOME/.cache/zsh/"   

# Download and install zinit if it's not already installed
if [ ! -d "${ZINIT_HOME}" ]; then
  mkdir -p "$(dirname "${ZINIT_HOME}")"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

autoload -Uz vcs_info add-zsh-hook
autoload -U colors && colors

# git info via zsh builtin
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '-[%F{yellow}%b%f]'
zstyle ':vcs_info:git:*' actionformats '-[%F{yellow}%b|%a%f]'

add-zsh-hook precmd vcs_info
setopt PROMPT_SUBST

nix_prompt() {
  [[ -n "$IN_NIX_SHELL" ]] || return
  local shell_name="${NIX_SHELL_NAME:-nix-shell}"
  print -Pn -- "-[%F{cyan}nix: ${shell_name}%f]"
}

PROMPT='[%F{magenta}%n%f]-[%F{green}%m%f]-[%F{white}%~%f]-[%F{244}zsh%f]${vcs_info_msg_0_}$(nix_prompt)
> '

# Source zinit
source "${ZINIT_HOME}/zinit.zsh"

# Shell integrations
eval "$(fzf --zsh)" 
eval "$(zoxide init --cmd cd zsh)" # zoxide

# zsh plugins
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Load completion system
autoload -U compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION && compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION

# Keybindings
bindkey '^N' history-search-forward
bindkey '^P' history-search-backward

# History settings
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Aliases
alias n='nvim'
alias y='yazi'
alias wifi='nmcli dev wifi list'
alias l='ls -al'
alias up='sudo nixos-rebuild switch'
alias conf='sudo nvim /etc/nixos/configuration.nix'
alias xbox='swaymsg output DP-9 toggle'
alias server='swaymsg output DP-8 toggle'
wific() {
  sudo nmcli dev wifi connect "$1" --ask
}
template(){ 
    nix flake init -t ~/dev/dev-templates#"$1" && direnv allow
}
