## この.vimrcを反映する 

```sh
if [[ -e ~/.vimrc ]]; then cp ~/.vimrc ~/.vimrc.bak; fi # make a backup just in case.
curl https://raw.githubusercontent.com/mynkit/my_vimrc/master/.vimrc > ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/fatih/vim-go.git ~/.vim/plugged/vim-go
vim +PlugInstall +qall
vim +GoInstallBinaries +qall
```
