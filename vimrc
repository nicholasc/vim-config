" Required
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Vim modifiers
Plugin 'tpope/vim-sensible'

" Utilities
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tobyS/pdv'
Plugin 'tobyS/vmustache'
Plugin 'mileszs/ack.vim'
Plugin 'bling/vim-airline'
Plugin 'Shougo/vimproc.vim'

" Auto-completion
Plugin 'Shougo/neocomplete.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'ervandew/supertab'

" Color schemes
Plugin 'morhetz/gruvbox'
Plugin 'nicholasc/vim-black'
Plugin 'nicholasc/vim-seti'

" Syntax files
Plugin 'StanAngeloff/php.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'groenewege/vim-less'
Plugin 'elzr/vim-json'
Plugin 'othree/html5.vim'
Plugin 'plasticboy/vim-markdown'

call vundle#end()

" Activate syntax & file type detection
syntax on
filetype plugin indent on

" Basic sets
set cul
set number
set hidden
set tabstop=4
set shiftwidth=4
set expandtab
set synmaxcol=512
set guioptions-=r
set guifont=Monaco:13
set showtabline=2
set backspace=indent,eol,start

" Default theme
set background=dark
colorscheme gruvbox 

" Map F13 & F14 to edit this file or the GUI file
map <F13> :e ~/.vim/vimrc<cr>
map <F14> :e ~/.vim/gvimrc<cr>

" Enable omni completion for web file types
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP

" Fugitive Configuration
map <leader>gw :Gwrite<cr>
map <leader>gs :Gstatus<cr>
map <leader>gc :Gcommit<cr>
map <leader>gd :Gdiff<cr>
map <leader>gp :Gpull<cr>
map <leader>gg :Gpush<cr>
map <leader>gm :Git mergetool<cr>

" CtrlP Configuration
map <leader>t :CtrlPCurWD<cr> 
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.svn$|\.phalcon|\.phpcomplete_extended|dump$|',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$|\.swp'
  \ }

" Supertab Configuration
let g:SuperTabMappingForward('')
let g:SuperTabDefaultCompletionType = "<c-n>"

" Tagbar Configuration
map <leader>r :TagbarOpen fc<cr>
let g:tagbar_width = 36

" PHP DocBlock Configuration
let g:pdv_template_dir = $HOME . "/.vim/bundle/pdv/templates"
map <D-D> :call pdv#DocumentCurrentLine()<cr>

" EasyMotion Configuration
let g:EasyMotion_leader_key = '<Leader>' 
set completeopt=longest,menuone

" Neocomplete Configuration
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#min_keyword_length = 3

" NERDTree Configuration
map <leader>n :NERDTreeToggle<cr>
let g:NERDTreeWinSize = 36 
let g:NERDTreeQuitOnOpen = 1

" NERCCommenter Configuration
map <leader>c :NERDComToggleComment<cr>

" Tabularize Configuration
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

" Ctags Configuration
set tags=./tags
map <D-C> :!ctags -R --languages=php --exclude='.*'<cr>

" Implement a basic Ack search
map <leader>s :call AckSearch()<cr>
function! AckSearch()
  let name = input('Enter search: ')
  execute 'Ack "' . name . '"'
endfunction

" Custom gutter background colors
hi SignColumn guibg=#282828
hi GitGutterAdd guibg=#282828
hi GitGutterChange guibg=#282828
hi GitGutterDelete guibg=#282828
hi GitGutterChangeDelete guibg=#282828

" Create a dummy sign in for a permanent gutter column
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')

