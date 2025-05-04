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

# More software

sudo apt install tig
