# installing zsh from https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
apt install zsh

# installing zgen from https://github.com/tarjoilija/zgen
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
source "${HOME}/.zgen/zgen.zsh"

# install nvm from https://github.com/nvm-sh/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

# Install Ollama
curl -fsSL https://ollama.com/install.sh | sh

