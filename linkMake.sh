# Vim and NeoVIm shortcuts

# delete previous symbolic links
rm ~/.config/nvim/nvim.init
rm ~/.config/nvim
rm ~/.vim
rm ~/.vimrc

# Neovim
ln -s ~/Developer/Config/nvim ~/.config/nvim
ln -s ~/Developer/Config/nvim/init.vim ~/.config/nvim/nvim.init

# Install Vim-Plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
 https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Vim
ln -s ~/Developer/Config/vim ~/.vim
ln -s ~/Developer/Config/vim/vimrc ~/.vimrc

# Install Vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
 https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Creates Gundo dir to store changes
mkdir ~/.vim/undodir
mkdir ~/.config/nvim/undodir



