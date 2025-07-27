# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
. "$HOME/.cargo/env"
export PATH=$PATH:/home/fauzy/.nvm/versions/node/v20.17.0/bin
export PATH=$PATH:/home/fauzy/ghostty/zig-out/bin
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

export PATH=$HOME/.local/bin:$PATH

export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Paths
export PATH="/usr/bin:$PATH"
export PATH="$HOME/.local/kitty.app/bin:$PATH"
export PATH="$HOME/.console-ninja/.bin:$PATH"
export PATH="$HOME/.config/emacs/bin:$PATH"
export PATH="$PATH:/home/fauzy/.nvm/versions/node/v20.17.0/bin"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/.eww/target/release:$PATH"
export PATH="/opt/nvim-linux-x86_64/bin:$PATH"
export PATH="$HOME/.spicetify:$PATH"
export PATH="/opt/zen:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH="$HOME/window-manager/squash:$PATH"
export PATH="$PATH:/sbin"
export PKG_CONFIG_PATH=/usr/lib/x86_64-linux-gnu/pkgconfig
export SHELL=/usr/bin/zsh

# Env vars
export XDG_DATA_DIRS="/home/linuxbrew/.linuxbrew/share:$XDG_DATA_DIRS"
export LD_LIBRARY_PATH="/home/fauzy/Downloads/icecat/icecat:$LD_LIBRARY_PATH:/usr/local/lib"
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH"
export QT_QPA_PLATFORMTHEME=qt5ct
export EDITOR=vim
export WINEPREFIX="$HOME/.wine"
export WINEARCH=win64
PROMPT_DIRTRIM=1

# Cargo
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

# NVM
export NVM_DIR="${XDG_CONFIG_HOME:-$HOME/.nvm}"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

# FNM
FNM_PATH="$HOME/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

# Pfetch
export PF_INFO="ascii title os kernel memory"
export PF_ASCII="Catppuccin"
export PF_SEP=":"
export PF_COL1=5
export PF_COL2=7

# Aliases
alias n='nvim'
alias v='vim'
alias nconf='cd ~/.config/nvim/'
alias zellij='~/./zellij'
alias list='apt list --upgradable'
alias eww='~/eww/target/release/eww'
alias cw='~/.config/chadwm/scripts/change_wallpaper.sh'
alias con='nmtui-connect'
alias zdl='~/Downloads/ZdlEngine/zdl'
alias music='tmux new-session -s $$ "tmux source-file ~/.ncmpcpp/tsession"'
alias bar='~/dwm-6.5/bar.sh'
alias chadfetch='~/.config/chadwm/scripts/fetch'
alias tjournal='~/unixporn-material/tjournal'
alias seamonkey='$HOME/Downloads/seamonkey/seamonkey'
alias palemoon='$HOME/Downloads/Palemoon/palemoon/palemoon'
alias templeos='neofetch --config $HOME/twm/themes/theme-014/neofetch/config.conf'
alias swaylock-effect='/usr/local/bin/swaylock \
    --screenshots \
    --clock \
    --indicator \
    --indicator-radius 100 \
    --indicator-thickness 7 \
    --effect-blur 7x5 \
    --effect-vignette 0.5:0.5 \
    --ring-color bb00cc \
    --key-hl-color 880033 \
    --line-color 00000000 \
    --inside-color 00000088 \
    --separator-color 00000000 \
    --grace 2 \
    --fade-in 0.2
'

alias hx='/home/fauzy/randomShit/helix-25.01.1-x86_64-linux/hx'
# alias notify-send="herbe"
# alias ls='lsd'
# alias icat='kitten icat'

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# eval "$(starship init zsh)"
# source /usr/share/doc/fzf/examples/key-bindings.zsh
# source /usr/share/doc/fzf/examples/completion.zsh
# source ~/.fzf-tab/fzf-tab.plugin.zsh
# zstyle ':fzf-tab:complete:*:*' fzf-preview 'bat --style=numbers --color=always --line-range=:500 {} 2>/dev/null || cat {} 2>/dev/null'
# Pakai batcat sebagai bat

# autoload -Uz compinit
# compinit

# Load fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Load fzf-tab
# source ~/.fzf-tab/fzf-tab.plugin.zsh
# preview_file() {
#   local in=${${"$(<{f})"%$'\0'*}#*$'\0'}
#   local -A ctxt=("${(@ps:\2:)CTXT}")
#   local realpath=${ctxt[IPREFIX]}${ctxt[hpre]}$in
#   realpath=${(Qe)~realpath}
#   bat --style=numbers --color=always --line-range=:100 "$realpath" 2>/dev/null || cat "$realpath" 2>/dev/null
# }

# fzf-tab for preview file
# zstyle ':fzf-tab:complete:*:*' extra-opts --preview=preview_file
# zstyle ':fzf-tab:complete:cd:*' fzf-preview 'bat --color=always $realpath' # remember to use single quote here!!!
# zstyle ':fzf-tab:complete:vim:*' fzf-preview 'bat --color=always $realpath' # remember to use single quote here!!!
# zstyle ':fzf-tab:complete:nvim:*' fzf-preview 'bat --color=always $realpath' # remember to use single quote here!!!
# it is an example. you can change it
# zstyle ':fzf-tab:complete:git-(add|diff|restore):*' fzf-preview \
# 	'git diff $word | delta'
# zstyle ':fzf-tab:complete:git-log:*' fzf-preview \
# 	'git log --color=always $word'
# zstyle ':fzf-tab:complete:git-help:*' fzf-preview \
# 	'git help $word | bat -plman --color=always'
# zstyle ':fzf-tab:complete:git-show:*' fzf-preview \
# 	'case "$group" in
# 	"commit tag") git show --color=always $word ;;
# 	*) git show --color=always $word | delta ;;
# 	esac'
# zstyle ':fzf-tab:complete:git-checkout:*' fzf-preview \
#	'case "$group" in
#	"modified file") git diff $word | delta ;;
#	"recent commit object name") git show --color=always $word | delta ;;
#	*) git log --color=always $word ;;
#	esac'
# export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH
# export PKG_CONFIG_PATH=/home/fauzy/randomShit/SwayFX/wlroots-0.16.2/lib/pkgconfig:$PKG_CONFIG_PATH

# pkgconfig fpr wlroot 16>
export PKG_CONFIG_PATH=/usr/local/lib/x86_64-linux-gnu/pkgconfig:$PKG_CONFIG_PATH
export WLR_RENDERER=vulkan
export QT_QPA_PLATFORM=wayland

# load pywal colors to shell
[ -f ~/.cache/wal/colors.sh ] && source ~/.cache/wal/colors.sh

export PATH="$PATH:/usr/games/"

export PATH="$HOME/development/flutter/bin:$PATH"
export ANDROID_HOME=$HOME/android-sdk
export PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH

# bun completions
[ -s "/home/fauzy/.bun/_bun" ] && source "/home/fauzy/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
