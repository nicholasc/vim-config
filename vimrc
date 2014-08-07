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
Plugin 'Shougo/neocomplete.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tobyS/pdv'
Plugin 'tobyS/vmustache'
Plugin 'StanAngeloff/php.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
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
set synmaxcol=512
set guioptions-=r
set guifont=Monaco:h10
set colorcolumn=120

" Default theme
colorscheme black

" Map F13 to edit this file
map <F13> :e ~/.vim/vimrc<CR>

" Map F14 to edit the GUI file
map <F14> :e ~/.gvimrc<CR>

" Create a terminal buffer
map <D-B> :VimShell<CR>

" Hard to fight old habbits...
map <leader>t ::CtrlPCurWD<CR>

" PHP DocBlock Generator
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
map <D-D> :call pdv#DocumentCurrentLine()<CR>

" Remap window splits switches
map <D-]> <C-w><Right>
map <D-[> <C-w><Left>

" EasyMotion use one leader
let g:EasyMotion_leader_key = '<Leader>' 
set completeopt=longest,menuone

" Let SuperTab complete with Omni
let g:SuperTabDefaultCompletionType = "<c-n>"

" Enable neocomplcache at startup
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#min_keyword_length = 3

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" CtrlP configuration
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.svn$|\.phalcon|\.phpcomplete_extended|dump$|',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" Map nerdtree opening
map <leader>n :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 36 

" Configure Tagbar plugin
map <leader>tb :TagbarOpen fc<CR>
let g:tagbar_width = 36

" Generate ctags for the current directory
map <D-C> :!ctags -R --languages=php --exclude='.*'<cr>

" Set the expected tags file
set tags=./tags
