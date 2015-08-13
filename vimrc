" Required
set nocompatible

" Vundle configuration {{{
" Set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
let path='$HOME/.vim/bundle'
call vundle#rc('$HOME/.vim/bundle')
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Utilities
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'rking/ag.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'tpope/vim-dispatch'
Plugin 'ryanoasis/vim-devicons'
Plugin 'Yggdroot/indentLine'
Plugin 'joonty/vdebug'
Plugin 'Shougo/vimshell.vim'
Plugin 'wincent/ferret'

" Auto-completion
Plugin 'Shougo/neocomplete.vim'
Plugin 'ervandew/supertab'
Plugin 'Raimondi/delimitMate'

" Color schemes
Plugin 'morhetz/gruvbox'
Plugin 'nicholasc/vim-black'
Plugin 'nicholasc/vim-seti'
Plugin '2072/PHP-Indenting-for-VIm'

" Syntax highlight
Plugin 'StanAngeloff/php.vim'
Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'othree/html5.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'lunaru/vim-less'

call vundle#end()
syntax on
filetype plugin indent on
" }}}

" Basic configuration {{{
set cul
set nowrap
set number
set hidden
set autoread
set novisualbell
set wildmenu
set lazyredraw
set showtabline=2
set relativenumber
set hlsearch incsearch
set nobackup noswapfile
set synmaxcol=120 colorcolumn=90
set expandtab tabstop=4 softtabstop=4 shiftwidth=4
set backspace=indent,eol,start

if has("unix")
    set shell=/bin/bash
endif
" }}}

" Graphical User Interface configuration {{{
if has("gui_running")
    " Remove all toolbars and scroll bars
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L

    " Set default window size
    set lines=58 columns=100

    " Set transparency and shell for osx
    if has("gui_macvim")
        set guifont=Monaco\ for\ Powerline\ Plus\ Nerd\ File\ Types:h13
        set transparency=2
    endif
endif
" }}}

" Reset leader key to comma
let mapleader=","
let maplocalleader="\\"

" Color scheme configuration
set t_Co=256
set background=dark
colorscheme gruvbox

" Map vimrc files edition
map <leader>ev :e $MYVIMRC<cr>
map <leader>eg :e $MYGVIMRC<cr>
map <leader>sv :source $MYVIMRC<cr>
map <leader>sg :source $MYGVIMRC<cr>

" Remap shift on homerow
map H ^
map L $
map J G
map K gg

" Airline configuration
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" Gotta stop cheating (disabled arrow mapping for my own good)
noremap <Up> <nop>
noremap <Left> <nop>
noremap <Down> <nop>
noremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Left> <nop>
inoremap <Down> <nop>
inoremap <Right> <nop>
inoremap <A-Up> <nop>
inoremap <A-Left> <nop>
inoremap <A-Down> <nop>
inoremap <A-Right> <nop>

" Map to remove search highlight
map <leader><esc> :nohlsearch<cr>

" PHP DocBlock configuration
let g:pdv_template_dir = $HOME."/.vim/bundle/pdv/templates"
map <D-D> :call pdv#DocumentCurrentLine()<cr>

" EasyMotion configuration
let g:EasyMotion_leader_key = '<Leader>'
set completeopt=longest,menuone

" SuperTab configuration
let g:SuperTabDefaultCompletionType = "<c-n>"

" Neocomplete configuration
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#min_keyword_length = 3

" File type omni completion configuration
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP

" CtrlP configuration
map <leader>t :CtrlPCurWD<cr>
if has("unix")
    let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
endif
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }

" PHP Complete Extended configuration
let g:phpcomplete_index_composer_command = "composer"

" Indent line configuration
let g:indentLine_color_gui = '#3e3833'
let g:indentLine_char = '|'

" DelimitMate configuration
let delimitMate_expand_cr = 1

" Fugitive configuration
map <leader>ga :silent Git add %<cr>
map <leader>gw :Gwrite<cr>
map <leader>gs :Gstatus<cr>
map <leadeR>gc :Gcommit<cr>
map <leader>gd :Gdiff<cr>
map <leader>gp :Gpull<cr>
map <leader>gg :Gpush<cr>
map <leader>gm :Git mergetool<cr>

" NERDTree configuration
map <leader>n :NERDTreeToggle<cr>
let g:NERDTreeWinSize = 36
let g:NERDTreeQuitOnOpen = 1

" NERDCommenter configuration
map <leader>c :NERDComToggleComment<cr>

" TagBar configuration
map <leader>tb :TagbarOpen fc<cr>
let g:tagbar_width = 36

" Erase trailing line at the end of file
autocmd BufWritePre *.php,*.py,*.js,*.css,*.txt,*.md,*.rb :call <SID>StripEOFLines()
function! <SID>StripEOFLines()
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\($\n\s*\)\+\%$//e
    let @/=_s
    call cursor(l, c)
endfunction

" GitGutter configuration
hi Normal guibg=#202020
hi SignColumn guibg=#202020
hi GitGutterAdd guibg=#202020
hi GitGutterChange guibg=#202020
hi GitGutterDelete guibg=#202020
hi GitGutterChangeDelete guibg=#202020

" Vdebug configuration
hi DbgCurrentLine guifg=#000000 guibg=#fb4934
hi DbgCurrentSign guifg=#000000 guibg=#fb4934
hi DbgBreakptLine guifg=#000000 guibg=#b8bb26
hi DbgBreakptSign guifg=#000000 guibg=#b8bb26
sign define current text=-> texthl=DbgCurrentSign linehl=DbgCurrentLine
sign define breakpt text=* texthl=DbgBreakptSign linehl=DbgBreakptLine

autocmd BufEnter * sign define DefaultColumnSign
autocmd BufEnter * execute 'sign place 9999 line=1 name=DefaultColumnSign buffer=' . bufnr('')

" Lazy var dumps
nmap <leader>v ivar_dump(); die;<esc>6hi
imap <leader>v var_dump(); die;<esc>6hi
