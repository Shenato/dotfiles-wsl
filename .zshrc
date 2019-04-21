#zmodload zsh/zprof
# Set up the prompt
source ~/antigen.zsh
#source ~/.bash_profile

# Load the oh my zsh
antigen use oh-my-zsh

# Bundles from robbyrussel
antigen bundle git
antigen bundle command-not-found

# Syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# Load theme
# ZSH_THEME="robbyrussell"
antigen theme agnoster

antigen apply

alias tmux='tmux -2'

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# User configuration

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"
if [ -f ~/.ssh/agent.env ] ; then
  . ~/.ssh/agent.env > /dev/null
  if ! kill -0 $SSH_AGENT_PID > /dev/null 2>&1; then
    echo "Stale agent file found. Spawning new agent… "
    eval `ssh-agent | tee ~/.ssh/agent.env`
    ssh-add
  fi
else
  echo "Starting ssh-agent"
  eval `ssh-agent | tee ~/.ssh/agent.env`
  ssh-add
fi
# End Of SSH agent

# Path to your oh-my-zsh installation.
#export ZSH="/root/.oh-my-zsh"
#source $ZSH/oh-my-zsh.sh

# Custom shit
source ~/.zsh_aliases
# Change Username in shell (remove machine name)
prompt_context() {  
	if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; 
		then    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"  
	fi
}
#zprof
