set number
syntax on
set mouse=a
set tabstop=4
set shiftwidth=4
set colorcolumn=80
set expandtab
set number relativenumber
augroup numbertoggle
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
        autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

" Allow saving of files as sudo when you forget to start vim using sudo
cmap w!! w !sudo tee > /dev/null %

call plug#begin()
    " Linter
    Plug 'dense-analysis/ale'

    " Rust language support
    Plug 'rust-lang/rust.vim'

    " coc.vnim
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Rust Vim
syntax enable
filetype plugin indent on
