set nocompatible

" Text Formatting
set tabstop=4
set nowrap      " don't wrap lines
set autoindent

set backspace=2
set showmatch

syntax on       " syntax highlighting

set number      " line numbers
set ruler       " show current position

set background=light

" synatx highlighting for CakePHP view templates
au BufNewFile,BufRead *.thtml setfiletype php
au BufNewFile,BufRead *.ctp setfiletype php

" capistrano
au BufNewFile,BufRead [cC]apfile  setfiletype ruby
au BufNewFile,BufRead *.erb  setfiletype ruby

" haml
au! BufRead,BufNewFile *.haml  setfiletype haml 

" python
au BufRead,BufNewFile *.py set expandtab
