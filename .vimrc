" Automatically install Plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plug
call plug#begin('~/.vim/plugged')
Plug 'dracula/vim',{'as':'dracula'}
Plug 'tpope/vim-fugitive',{'as':'fugitive'}
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Airline theme
let g:airline_theme='dracula'

" Indentation
set expandtab
set shiftwidth=4
set softtabstop=4
set textwidth=0

" Hybrid line numbers. Current line shows absolute number, all other lines relative
set relativenumber
set number
