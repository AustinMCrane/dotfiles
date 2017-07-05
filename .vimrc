" Vundle vimrc
set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf8
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'm0rp/ale'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'janko-m/vim-test'
Plugin 'rails.vim'
Plugin 'mattn/emmet-vim'
Plugin 'loremipsum'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'ryanoasis/vim-webdevicons'
Plugin 'joegesualdo/jsdoc.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'fatih/vim-go'

Bundle 'takac/vim-spotifysearch'
Bundle 'moll/vim-node'
Bundle 'Blackrush/vim-gocode'



" End configuration, makes the plugins available
call vundle#end()

" nnoremap jsd :<C-u>call JSDocAdd()<CR>

filetype plugin indent on

syntax on
set number
" show existing tab with 4 spaces width
set tabstop=2
" " when indenting with '>', use 4 spaces width
set shiftwidth=2
" " On pressing tab, insert 4 spaces
set expandtab
set nowrap

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:ycm_confirm_extra_conf = 0 
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:airline#extensions#tabline#enabled = 1
" let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ale_sign_column_always = 1

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>



colorscheme material
" required if using https://github.com/bling/vim-airline
" let g:airline_powerline_fonts=1
