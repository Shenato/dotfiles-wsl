# installing zsh from https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
apt install zsh

# installing zgen from https://github.com/tarjoilija/zgen
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
source "${HOME}/.zgen/zgen.zsh"

# Install Meslo LG font and unzip into ~/fonts
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Meslo.tar.xz
mkdir fonts
tar -xvf Meslo.tar.xz -C fonts
# run file in zip file "MesloLGLDZ" font and use it in terminal

# install nvm from https://github.com/nvm-sh/nvm and setup node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
nvm install --lts
nvm use default
# runs: nvm

# Install VSCode
curl -L https://go.microsoft.com/fwlink/\?LinkID\=760868 -o code.deb
# sudo dpkg -i code.deb
sudo gdebi -i code.deb

# Install Ollama
curl -fsSL https://ollama.com/install.sh | sh
# runs: ollama

# Install GRUB menu customizer GUI
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt-get update
sudo apt-get install grub-customizer
# runs: grub-customizer


# (Optional) Install OpenRazer for Razer Keyboard/Mouse control
apt install software-properties-gtk
sudo add-apt-repository ppa:openrazer/stable
apt update
sudo apt install openrazer-meta
sudo gpasswd -a shenato plugdev
sudo add-apt-repository ppa:openrazer/stable
sudo add-apt-repository ppa:polychromatic/stable
sudo apt update
# GUI app: polychromatic
sudo apt install polychromatic


# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Install supabase through homebrew
brew install supabase/tap/supabase                                                             


# Docker
# Add Docker's official GPG key:                                                               
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
# Install docker
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin


# Deno
curl -fsSL https://deno.land/install.sh | sh


# More software

sudo apt install tig
