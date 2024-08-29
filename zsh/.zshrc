#If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.dotfiles/oh-my-zsh"

# Path to homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
# Node18 LTS
# export PATH="/opt/homebrew/opt/node@18/bin:$PATH"

# Herd injected PHP binary.
# export PATH="/Users/ciaran/Library/Application Support/Herd/bin/":$PATH


# # Herd injected PHP 8.2 configuration.
# export HERD_PHP_82_INI_SCAN_DIR="/Users/ciaran/Library/Application Support/Herd/config/php/82/"


# # Herd injected PHP 7.4 configuration.
# export HERD_PHP_74_INI_SCAN_DIR="/Users/ciaran/Library/Application Support/Herd/config/php/74/"

# PHP
export PATH="/opt/homebrew/bin/php:$PATH"

# Node LTS
#export PATH="/opt/homebrew/opt/node@20/bin:$PATH"

# grep
export PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"

# sed
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"

# python version 3.12
export PATH="/opt/homebrew/opt/python@3.12/libexec/bin:$PATH"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""

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
DISABLE_AUTO_TITLE="true"

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
plugins=(git gitfast copypath copyfile copybuffer history jsontools macos gh web-search python)
# link to plugins https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/

#enable zsh auto suggtions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#enable zsh syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.


source ~/.dotfiles/.config/zsh/aliases/pycharm.zsh
source ~/.dotfiles/.config/zsh/aliases/colorls.zsh
source ~/.dotfiles/.config/zsh/aliases/pnpm.zsh
source ~/.dotfiles/.config/zsh/aliases/ruby.zsh
source ~/.dotfiles/.config/zsh/aliases/vscode.zsh
alias storm=~/.dotfiles/scripts/webstorm/bin/launcher
alias pip=pip3
# alias python=python3
alias mullvadoff="mullvad disconnect && mullvad lockdown-mode set off"
alias mullvadon="mullvad connect && mullvad lockdown-mode set on"
# homebrew dumpile location
export HOMEBREW_BUNDLE_FILE="$HOME/.dotfiles/.config/homebrew/Brewfile"

alias src="omz reload"

# configs
alias zshconfig="nvim ~/.zshrc"
alias cat="bat"
alias yd="yarn dev"
alias pydev='python3 manage.py runserver'
alias venv='source venv/bin/activate'
alias pfreeze='pip3 freeze > requirements.txt'
alias djsuper='python3 manage.py createsuperuser --username=ciaran --email=ciarant.dev@gmail.com'
alias djsecure='python3 manage.py check --deploy'
alias brewup='brew update && brew upgrade'
# Github recomedning to use in terminal if there are issues signing gpg key
export GPG_TTY=$(tty)
# alias starshipconfig="code ~/.config/starship.toml"


#exa
# list all | header | long
# alias ll="exa -alh --group-directories-first --icons"
# alias ls="exa --group-directories-first --icons"
# alias tree="exa --tree"
# export EXA_ICON_SPACING="2"
# export LS_COLORS="di=38;5;75:fi=38;5;7"


# Export HOMEBREW_BREW_GIT_REMOTE="git clone git@github.com:ciaran-io/Dot-files.git
# Window Title Terminal
# precmd () { print -Pn "" "\e]2;%~ " " \a"}


# Copy the PWD to the Clipboard
# alias cpwd="pwd | tr -d '\n' | pbcopy && echo 'pwd copied to clipboard'"


# Function to activate venv if present
activate_venv() {
  # Check if virtual environment is already activated
  if [[ -n $VIRTUAL_ENV && -z $PYVENV_ACTIVATED ]]; then
    return
  fi

  # Check for venv directory
  if [[ -d venv ]]; then
    if [[ -z $VIRTUAL_ENV ]]; then
      source venv/bin/activate
      export PYVENV_ACTIVATED=1
    fi
  else
    unset PYVENV_ACTIVATED
    deactivate 2>/dev/null || true
  fi
}

# Function to call activate_venv when changing directories
chpwd() {
  activate_venv
}

# Call activate_venv when opening a new terminal
activate_venv

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
# Must be on bottom of file
eval "$(zoxide init zsh)"
# https://starship.rs/guide/
eval "$(starship init zsh)"
