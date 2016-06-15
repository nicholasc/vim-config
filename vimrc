call plug#begin('~/.vim/plugins')

" Utilities
Plug 'tpope/vim-sensible'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'Lokaltog/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'Shougo/vimproc.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ryanoasis/vim-devicons'
Plug 'wincent/ferret'
Plug 'docteurklein/php-getter-setter.vim'
Plug 'schickling/vim-bufonly'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'gcmt/taboo.vim'

" Auto-completion
if has('nvim')
    Plug 'Shougo/deoplete.nvim'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
else
    Plug 'Shougo/neocomplete.vim'
    Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlPCurWD' }
endif

" Color schemes
Plug 'morhetz/gruvbox'

" Syntax highlight
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'lunaru/vim-less', { 'for': 'less' }

call plug#end()
syntax on
filetype plugin indent on
" }}}

" Basic configuration {{{
set nowrap
set number
set hidden
set nocursorline
set lazyredraw
set novisualbell
set showtabline=2
set nobackup noswapfile
set synmaxcol=120 cc=100
set completeopt=longest,menuone
set expandtab tabstop=4 softtabstop=4 shiftwidth=4
set wildignore+=*/.git/*,*/node_modules/*,*/.sass-cache/*,*/vendor/*
set relativenumber

if !has('nvim')
    set autoread
    set scrolljump=25
    set backspace=indent,eol,start
    set hlsearch incsearch
    set wildmenu
endif

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

    " Set default lines and columns
    set lines=50 columns=98

    " Detect unix operating system
    if has("unix")
        " Retrieve the operating system name
        let s:uname = system("uname -s")

        " Set font according to system
        if s:uname == "Darwin"
            set guifont=Monaco\ for\ Powerline\ Plus\ Nerd\ File\ Types:h13
        else
            set guifont=Monaco\ for\ Powerline\ Plus\ Nerd\ File\ Types:h13
        endif
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

" Tab configuration
nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>
nnoremap tn :tabnew<CR>

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

" Map to remove search highlight
map <leader><esc> :nohlsearch<cr>

" EasyMotion configuration
let g:EasyMotion_leader_key = '<Leader>'

" SuperTab configuration
let g:SuperTabDefaultCompletionType = "<c-n>"

" Neocomplete/Deoplete configuration
if has('nvim')
    let g:deoplete#enable_at_startup = 1
else
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_smart_case = 1
    let g:neocomplete#min_keyword_length = 3
endif

"" FZF configuration
if has('nvim')
    let g:fzf_action = { 'enter': 'tab split' }
    let g:fzf_height = '25%'
endif

" CtrlP configuration
if has('nvim')
    map <leader>t :FZF --reverse<cr>
else
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
endif

" Fugitive configuration
map <leader>ga :silent Git add %<cr>
map <leader>gw :Gwrite<cr>
map <leader>gs :Gstatus<cr>
map <leadeR>gc :Gcommit<cr>
map <leader>gd :Gdiff<cr>
map <leader>gp :Gpull<cr>
map <leader>gg :Gpush<cr>
map <leader>gm :Git mergetool<cr>

" Syntastic configuration
let g:syntastic_enable_balloons = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_error_symbol = '❗️'
let g:syntastic_warning_symbol = '🔸'

" GitGutter configuration
let g:gitgutter_sign_modified_removed = '*'
hi GitGutterAdd guibg=#282828 ctermbg=237 guifg=#b8bb26 ctermfg=142
hi GitGutterChange guibg=#282828 ctermbg=237 guifg=#8ec07c ctermfg=108
hi GitGutterDelete guibg=#282828 ctermbg=237 guifg=#fb4934 ctermfg=167
hi GitGutterChangeDelete guibg=#282828 ctermbg=237  guifg=#8ec07c ctermfg=108
autocmd BufEnter * execute 'GitGutterAll'
autocmd BufEnter * sign define DefaultColumnSign
autocmd BufEnter * execute 'sign place 9999 line=1 name=DefaultColumnSign buffer=' . bufnr('')

" NERDCommenter configuration
map <leader>c :NERDComToggleComment<cr>

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

" ColorScheme adjustments
"hi SignColumn ctermbg=235
"hi CursorLineNr ctermbg=235 ctermfg=4

" Lazy var dumps
nmap <leader>v ivar_dump(); die;<esc>6hi
imap <leader>v var_dump(); die;<esc>6hi
