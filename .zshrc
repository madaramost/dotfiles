#                  __ _       
#  ___ ___  _ __  / _(_) __ _ 
# / __/ _ \| '_ \| |_| |/ _` |
#| (_| (_) | | | |  _| | (_| |
# \___\___/|_| |_|_| |_|\__, |
#                       |___/ 
# ==================================================
# " Dotfiles: https://github.com/sentakuhm/.dotfiles
# " Email: madaramost@gmail.com
# ==================================================

# ++ Paths ++

# oh-my-zsh
export ZSH="/home/sentaku/.oh-my-zsh"
# Colored man pages
export PAGER="most"
# apps installed by cargo
export PATH=$PATH:.cargo/bin
# script PATH for vifm
export PATH=$PATH:./.config/vifm/scripts

# ++ End of paths ++
#
# ++ Theme ++
ZSH_THEME="intheloop"

# ++ Plugins ++ 
plugins=(git dotenv extract rake archlinux python vscode sudo vim-interaction vi-mode man history themes last-working-dir z zsh-interactive-cd)

# ++ Sources & Aliases ++
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias vifm='vifmrun'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config config status.showUntrackedFiles no

# ++ logo-ls Configs ++
alias ls='logo-ls'
alias la='logo-ls -A'
alias ll='logo-ls -al'
# equivalents with Git Status on by Default
alias lsg='logo-ls -D'
alias lag='logo-ls -AD'
alias llg='logo-ls -alD'
# ++ end of logo-ls configs ++
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
