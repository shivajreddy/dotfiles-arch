export ZSH="$HOME/.config/zsh/.oh-my-zsh"
export PATH=$PATH:/home/shiva/.spicetify

#ZSH_THEME="robbyrussell"

# alias sshgcp="cd ~/mySSHKeys && ssh -i shiva_ssh_key shiva@34.139.78.157"
alias sshgcp="cd ~/mySSHKeys && ssh -i shiva_ssh_key shiva@34.148.73.253"

alias vi="nvim"
alias vim="nvim"
alias py="python3"
alias python="python3"
alias pva="source venv/bin/activate"
alias pip="python3 -m pip"

alias nf="neofetch"

alias gitsave="gaa && gcmsg '.' && ggpush"

alias p="pacman"
alias todo="cd ~/todo && vi todo.md"

alias nexus="cd Projects/nexus/backend/nexus && pva && uvicorn app.main:app --reload"


plugins=(git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh


# export TASKRC=~/.config/taskwarrior/.taskrc
# export TASKDATA=~/.config/taskwarrior/.task


# using starship instead of powerlevel
eval "$(starship init zsh)"

# echo ".zshrc is loaded"
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit ; compinit


# Open apps in wayland by default, instead of x11
# if some apps dont open, then explicitly open them in x11
# https://luxagraf.net/src/guide-to-switching-i3-to-sway
export XDG_SESSION_TYPE=wayland 
export GDK_BACKEND=wayland

