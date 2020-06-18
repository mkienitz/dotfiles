let plug_install = 0
let autoload_plug_path = stdpath('config') . '/autoload/plug.vim'
if !filereadable(autoload_plug_path)
    silent exe '!curl -fL --create-dirs -o ' . autoload_plug_path . 
        \ ' https://raw.github.com/junegunn/vim-plug/master/plug.vim'
    execute 'source ' . fnameescape(autoload_plug_path)
    let plug_install = 1
endif
unlet autoload_plug_path

" Plug
call plug#begin()
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-fugitive', {'as': 'fugitive'}
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dart-lang/dart-vim-plugin'
call plug#end()

syntax on
let g:onedark_hide_endofbuffer=1
let g:onedark_termcolors=16
colorscheme onedark

" Airline theme
let g:airline_theme='onedark'

" Indentation
set expandtab
set shiftwidth=4
set softtabstop=4
set textwidth=0

" Hybrid line numbers. Current line shows absolute number, all other lines relative
set relativenumber
set number

