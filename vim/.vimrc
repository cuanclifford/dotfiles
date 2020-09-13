set number
syntax on
set mouse=a
set tabstop=4

" Allow saving of files as sudo when you forget to start vim using sudo
cmap w!! w !sudo tee > /dev/null %
