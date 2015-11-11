set rtp+=$HOME/.vim/bundle/Vundle.vim
let path='$HOME/.vim/bundle'
call vundle#rc('$HOME/.vim/bundle')
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Utilities
Plugin 'tpope/vim-sensible'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/vimproc.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ryanoasis/vim-devicons'
Plugin 'wincent/ferret'
Plugin 'docteurklein/php-getter-setter.vim'
Plugin 'benmills/vimux'
Plugin 'schickling/vim-bufonly'

" Auto-completion
Plugin 'Shougo/neocomplete.vim'
Plugin 'ervandew/supertab'
Plugin 'Raimondi/delimitMate'

" Color schemes
Plugin 'morhetz/gruvbox'

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
set lazyredraw
set novisualbell
set wildmenu
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

" Implement bar cursor for iterm2/tmux insert mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

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

        " Set font & transparency according to system
        if s:uname == "Darwin"
            set guifont=Monaco\ for\ Powerline\ Plus\ Nerd\ File\ Types:h13
        else
            set guifont=Monaco\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 10
        endif

        " Rebind Mac OS X style shortcuts
        map <M-[> :tabp<cr>
        map <C-M-]> :tabn<cr>
        map <C-M-s> :w<cr>
        map <C-M-w> :bd<cr>
        map <C-M-t> :tabnew<cr>
        map <C-M-q> :qa<cr>
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

"" Map vimrc files edition
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
set completeopt=longest,menuone

" SuperTab configuration
let g:SuperTabDefaultCompletionType = "<c-n>"

" Neocomplete configuration
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#min_keyword_length = 3

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

" NERDCommenter configuration
map <leader>c :NERDComToggleComment<cr>

" TagBar configuration
map <leader>tb :TagbarOpen fc<cr>
let g:tagbar_width = 36

"Vimux configuration
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vq :VimuxCloseRunner<CR>
map <Leader>vx :VimuxInterruptRunner<CR>
map <Leader>vz :call VimuxZoomRunner()<CR>

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
hi SignColumn guibg=#202020 ctermbg=235
hi GitGutterAdd guibg=#202020 ctermbg=235 guifg=#b8bb26 ctermfg=142
hi GitGutterChange guibg=#202020 ctermbg=235 guifg=#8ec07c ctermfg=108
hi GitGutterDelete guibg=#202020 ctermbg=235 guifg=#fb4934 ctermfg=167
hi GitGutterChangeDelete guibg=#202020 ctermbg=235 guifg=#8ec07c ctermfg=108
autocmd BufEnter * sign define DefaultColumnSign
autocmd BufEnter * execute 'sign place 9999 line=1 name=DefaultColumnSign buffer=' . bufnr('')

" Lazy var dumps
nmap <leader>v ivar_dump(); die;<esc>6hi
imap <leader>v var_dump(); die;<esc>6hi
