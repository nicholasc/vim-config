" Required
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Vim modifiers
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-sensible'

" Utilities
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tobyS/pdv'
Plugin 'mileszs/ack.vim'

" Auto-completion
Plugin 'Shougo/neocomplete.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'ervandew/supertab'

"Color schemes
Plugin 'morhetz/gruvbox'
Plugin 'nicholasc/vim-black'
Plugin 'nicholasc/vim-seti'

" Language files
Plugin 'StanAngeloff/php.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'othree/html5.vim'
Plugin 'plasticboy/vim-markdown'

call vundle#end()
filetype plugin indent on

" Basic sets
set cul
set number
set tabstop=4
set shiftwidth=4
set synmaxcol=512
set guioptions-=r
set guifont=Monaco:h13
set showtabline=2

" Default theme
set background=dark
colorscheme gruvbox 

" Map F13 to edit this file
map <F13> :e ~/.vim/vimrc<cr>

" Map F14 to edit the GUI file
map <F14> :e ~/.gvimrc<cr>

" Hard to fight old habbits...
map <leader>t :CtrlPCurWD<cr>

" PHP DocBlock Generator
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
map <D-D> :call pdv#DocumentCurrentLine()<cr>

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

" Fugitive mapping
map <leader>gw :Gwrite<cr>
map <leader>gs :Gstatus<cr>
map <leadeR>gc :Gcommit<cr>
map <leader>gd :Gdiff<cr>
map <leader>gp :Gpull<cr>
map <leader>gg :Gpush<cr>
map <leader>gm :Git mergetool<cr>

" Search the current folder
function! AckSearch()
  let name = input('Enter search: ')
  execute 'Ack "' . name . '"'
endfunction
map <leader>s :call AckSearch()<cr>

" Map nerdtree opening
map <leader>n :NERDTreeToggle<cr>
let g:NERDTreeWinSize = 36 
let g:NERDTreeQuitOnOpen 3= 1

" Map nerdcommenter toggle
map <leader>c :NERDComToggleComment<cr>

" Configure Tagbar plugin
map <leader>tb :TagbarOpen fc<cr>
let g:tagbar_width = 36

" Generate ctags for the current directory
map <D-C> :!ctags -R --languages=php --exclude='.*'<cr>

" Set the expected tags file
set tags=./tags

