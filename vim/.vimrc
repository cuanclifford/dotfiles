set number
syntax on
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab

" Allow saving of files as sudo when you forget to start vim using sudo
cmap w!! w !sudo tee > /dev/null %

call plug#begin()
    Plug 'dense-analysis/ale'
    Plug 'rust-lang/rust.vim'
call plug#end()

" Rust Vim
syntax enable
filetype plugin indent on
