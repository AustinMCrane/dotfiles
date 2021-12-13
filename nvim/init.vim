filetype plugin indent on

syntax on

set nocompatible              " be iMproved, required
set encoding=utf8
set ffs=unix,dos
set number
set autochdir
" show existing tab with 4 spaces width
set tabstop=2
" " when indenting with '>', use 4 spaces width
set shiftwidth=2
" " On pressing tab, insert 4 spaces
set expandtab
set nowrap

let g:webdevicons_enable = 1

autocmd FileType go set ts=4
autocmd FileType json set ts=4 sw=4 expandtab
autocmd FileType python set ts=8
autocmd FileType html set ts=2 sw=2 expandtab
autocmd FileType c,cpp set ts=3 sw=3 expandtab cindent
autocmd FileType pl set ts=3 sw=3 expandtab cindent
autocmd FileType sql set ts=4 sw=4 expandtab cindent
autocmd FileType javascript set ts=4 sw=4 expandtab cindent

call plug#begin()

" Make sure you use single quotes

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'ryanoasis/vim-devicons'

Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'tpope/vim-fugitive'
" adds GBrowse function for github
Plug 'tpope/vim-rhubarb'

Plug 'scrooloose/nerdtree'
"Plug 'Valloric/YouCompleteMe'
Plug 'm0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'janko-m/vim-test'
Plug 'mattn/emmet-vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'ryanoasis/vim-webdevicons'
Plug 'joegesualdo/jsdoc.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'fatih/vim-go'
Plug 'ianding1/leetcode.vim'


" Initialize plugin system
call plug#end()

let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:ycm_confirm_extra_conf = 0
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:airline#extensions#tabline#enabled = 1
" let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ale_sign_column_always = 1

" colorscheme dark-material
" required if using https://github.com/bling/vim-airline
" let g:airline_powerline_fonts=1

set guifont=DroidSansMono\ Nerd\ Font\ Mono\ Book:h11
let g:airline_powerline_fonts = 1
let g:webdevicons_enable_nerdtree = 1
let g:ale_fixers = {'sql': ['sqllint']}

let g:github_enterprise_urls = ['https://qnetgit.cms.gov/']
