export ZSH="$HOME/.config/zsh/.oh-my-zsh"

#ZSH_THEME="robbyrussell"

alias sshgcp="cd ~/mySSHKeys && ssh -i shiva_ssh_key shiva@34.139.78.157"

alias vi="nvim"
alias vim="nvim"
alias py="python3"
alias python="python3"
alias pva="source venv/bin/activate"
alias pip="python3 -m pip"

alias nf="neofetch"
alias ff="fastfetch"

alias p="pacman"
alias todo="cd ~/todo && vi todo.md"


plugins=(git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh


# export TASKRC=~/.config/taskwarrior/.taskrc
# export TASKDATA=~/.config/taskwarrior/.task


# using starship instead of powerlevel
eval "$(starship init zsh)"

# echo ".zshrc is loaded"
