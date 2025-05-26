#zmodload zsh/zprof
# Set up the prompt
source ~/.zgen/zgen.zsh
#source ~/.bash_profile

# Custom shit
# source ~/.zsh_aliases

# Load the oh my zsh
if ! zgen saved; then
  echo "Creating a zgen save"

  # specify plugins here
  zgen oh-my-zsh

  # Bundles from robbyrussel
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/command-not-found

  # Syntax highlighting
  zgen load zsh-users/zsh-syntax-highlighting

  zgen load zsh-users/zsh-completions src

  # Load theme
  zgen oh-my-zsh themes/agnoster


  # generate the init script from plugins above
  zgen save
fi

# User configuration

# WSL only config (experimental)
if [[ $(uname -r) == (#s)*[mM]icrosoft*(#e) ]]; then
  echo WSL
  # Cypress config for opening display (ONLY FOR WSL)
  export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
fi

alias tmux='tmux -2'

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/scripts:$PATH # Utiliy scripts
export PATH=$HOME/.dotfiles/scripts:$PATH # Utility scripts
export PATH=~/.nvm/versions/node/v16.1.0/bin:$PATH # Default Node version
# PHP
export PATH="/home/shenato/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/shenato/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# SSH
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


# Change Username in shell (remove machine name)
prompt_context() {  
	if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; 
		then    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"  
	fi
}
#zprof

# Aliases
alias notebook="cd ~/core/notebook-obsidian"

# Bootup operations

# Switch to current project node version
nvm use default
clear

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
. "/home/shenato/.deno/env"