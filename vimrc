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
Plugin 'scrooloose/nerdtree'
Plugin 'PDV--phpDocumentor-for-Vim'
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
set synmaxcol=320
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
inoremap <D-D> <ESC>:call PhpDocSingle()<CR>i
nnoremap <D-D> :call PhpDocSingle()<CR> 
vnoremap <D-D> :call PhpDocRange()<CR>

" Remap window splits switches
map <D-]> <C-w><Right>
map <D-[> <C-w><Left>

" EasyMotion use one leader
let g:EasyMotion_leader_key = '<Leader>' 
set completeopt=longest,menuone

" Let SuperTab complete with Omni
let g:SuperTabDefaultCompletionType = "<c-n>"

" Enable neocomplcache at startup
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" CtrlP configuration
"let g:ctrlp_use_caching = 1
"let g:ctrlp_clear_cache_on_exit = 0
"let g:ctrlp_cache_dir = $HOME . '.vim/.ctrlp'
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
map <leader>tb :TagbarOpen<CR>
let g:tagbar_width = 36
autocmd VimEnter * nested :TagbarOpen
autocmd TabEnter * nested :TagbarOpen

" Generate ctags for the current directory
map <D-C> :!ctags -R --languages=php --exclude='.*'<cr>

" Set the expected tags file
set tags=./tags
