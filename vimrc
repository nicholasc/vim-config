" Required
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Configure plugins
Plugin 'kien/ctrlp.vim'
Plugin 'yegappan/grep'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'PDV--phpDocumentor-for-Vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'nicholasc/vim-black'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-sensible'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'

call vundle#end()
filetype plugin indent on

" Basic sets
set cul
set number
set tabstop=4
set shiftwidth=4
set synmaxcol=3000
set guioptions-=r
set guifont=Monaco:h10
set colorcolumn=120

" Default theme
colorscheme black

" Map F13 to edit this file
map <F13> :e ~/.vim/vimrc<CR>

" Map F14 to edit the GUI file
map <F14> :e ~/.gvimrc<CR>

" PHP Lint Mapping
map <D-d> :!/usr/bin/.php -l %<CR>
"map <D-i> :!phpcs %<CR>

" Create a terminal buffer
map <D-B> :VimShell<CR>

" PHP DocBlock Generator
inoremap <M-S-d> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <M-S-d> :call PhpDocSingle()<CR> 
vnoremap <M-S-d> :call PhpDocRange()<CR>

" Remap window splits switches
map <D-]> <C-w><Right>
map <D-[> <C-w><Left>

" Command-T opens file in a new tab
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'

" EasyMotion use one leader
let g:EasyMotion_leader_key = '<Leader>' 

set completeopt=longest,menuone

" Let SuperTab complete with Omni
let g:SuperTabDefaultCompletionType = "<c-n>"

" Generate ctags for the current directory
map <M-S-t> :!ctags --langmap=php:.engine.inc.module.theme.install.php --php-kinds=cdfi --languages=php --recurse --exclude='.svn'<cr>

" Set the expected tags file
set tags=./tags

" Enable neocomplcache at startup
let g:neocomplcache_enable_at_startup = 1

" CtrlP opens files in a new tab
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }
