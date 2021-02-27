# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/chihim/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(z zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# For hiding user name in zsh
export DEFAULT_USER="chihim"

# homebrew
export PATH="/usr/local/sbin:$PATH"

# iterm2
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# nvm
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# syntax highlighting
# moved to plugins=... , clone repo to .oh-my-zsh instead
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# auto suggestion
# moved to plugins=... , clone repo to .oh-my-zsh instead
# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=4'

# dotfiles backup
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# flushdns
alias flushdns='sudo killall -HUP mDNSResponder; sudo killall mDNSResponderHelper; sudo dscacheutil -flushcache'

# resetwifi
alias resetwifi='sudo ifconfig en0 down && sleep 5 && sudo ifconfig en0 up'

# use cloudflare dns for all network interfaces
alias setdns1111='networksetup -listallnetworkservices 2>/dev/null | grep -v "*" | while read x; do; networksetup -setdnsservers "$x" 1.1.1.1 1.0.0.1 2606:4700:4700::1111 2606:4700:4700::1001; done'
alias setdnslocal='networksetup -listallnetworkservices 2>/dev/null | grep -v "*" | while read x; do; networksetup -setdnsservers "$x" 127.0.0.1; done'
alias setdnsempty='networksetup -listallnetworkservices 2>/dev/null | grep -v "*" | while read x; do; networksetup -setdnsservers "$x" empty; done'

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# flutter
export PATH="$PATH:/usr/local/share/flutter/bin"

# default use python3
alias python='python3'

# egpu
alias stopegpu='sudo SafeEjectGPU Eject && sudo kextunload /System/Library/Extensions/AppleThunderboltPCIAdapters.kext/Contents/PlugIns/AppleThunderboltPCIUpAdapter.kext/'
alias startegpu='sudo kextload /System/Library/Extensions/AppleThunderboltPCIAdapters.kext/Contents/PlugIns/AppleThunderboltPCIUpAdapter.kext/'

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

# record xcode simulator
alias recordxcsim='xcrun simctl io booted recordVideo simulator_recording.mp4'

# kubectl
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
export KUBE_EDITOR="nano"

# Android sdk
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"
export PATH="$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/tools/bin:$ANDROID_SDK_ROOT/platform-tools:$PATH"

# gcloud
export CLOUDSDK_PYTHON="/usr/local/opt/python@3.8/libexec/bin/python"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# oursky rproxy
start-rproxy() {
    echo "kubectl -n $1 port-forward deployment/rproxy 50022:2222" | xargs -I xxx osascript -e 'tell application "Terminal" to do script "xxx"'
    echo "until sleep 3 && ssh -i ~/.ssh/rproxy user@localhost -p 50022 -R 0.0.0.0:8080:127.0.0.1:$2; do echo try again; done" | xargs -I xxx osascript -e 'tell application "Terminal" to do script "xxx"'
}
