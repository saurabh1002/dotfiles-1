# Install packages
sudo pacman -S zsh tmux kitty

# Install oh-my-zsh and plugins
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Make zsh default shell
chsh -s /bin/zsh

# Install tmuxinator

# Clone my dotfiles
git clone --bare git@github.com:l00p3/dotfiles.git

# Install nvim plugins
url -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall

# Install tmux plugin manager
# To install the plugins press "prefix + I" in tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
