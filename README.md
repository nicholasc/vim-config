<img src="https://vim.sexy/img/Vimlogo.svg" width="286" height="260"/>
# Introduction
The main goal with this vim configuration is to keep things lightweight, fast and easy to use. I use it everyday both at work and at home and it works great for me. It supports both Vim & NeoVim on Mac OS X, Linux & Windows. I constantly review and modifiy this configuration and I'm always open to suggestions and/or contributions.

Thanks for stopping by and hopefully you find something of use.

# Requirements
Mac OS X:
* [MacVim](https://code.google.com/p/macvim/): MacVim must be compiled with python & lua support. Using brew, MacVim comes with python by default. We must inform brew to build the formula with lua support:

    `brew install macvim --with-lua`
* [NeoVim](https://neovim.io/): NeoVim ships with python & lua support by default. It can easily be installed with brew using the following command:

    `brew install neovim`

Windows:
* [Vim for Windows](https://bitbucket.org/Haroogan/vim-for-windows/downloads): Download the version compiled with both Python and Lua.

# Manual Installation
1. Check out the current source from github:
    * Mac OS X, Linux & Windows:

        `git clone https://github.com/nicholasc/vim-config.git $HOME/.vim`

2. Create symlinks for vimrc:

    * Mac OS X & Linux:

        `ln -s $HOME/.vim/vimrc $HOME/.vimrc`

    * Windows:

        `cmd /c mklink $HOME/.vimrc $HOME/.vim/.vimrc`
3. Clone Plug repository inside the bundle folder:

    *On Windows, follow these [steps](https://github.com/gmarik/Vundle.vim/wiki/Vundle-for-Windows) (neocomplete fallback) before continuing.*

    Vim:

    `curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

    NeoVim:

    `curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
4. Open vim, discard errors and install the plugins using the following command:

        :PlugInstall

5. Install VimProc' dependencies using the following command:

        :VimProcInstall

# Plugins
Here is a list of all the available plugin with this config:

#### Utilities
* [vim-sensible](https://github.com/tpope/vim-sensible): Think of sensible.vim as one step above 'nocompatible' mode: a universal set of defaults that (hopefully) everyone can agree on.
* [vim-fugitive](https://github.com/tpope/vim-fugitive): a Git wrapper so awesome, it should be illegal.
* [vim-gitgutter ](https://github.com/airblade/vim-gitgutter): A Vim plugin which shows a git diff in the gutter (sign column) and stages/reverts hunks.
* [neocomplete](https://github.com/Shougo/neocomplete.vim): Next generation completion framework after neocomplcache.
* [deoplete](https://github.com/Shougo/deoplete.nvim): Dark powered asynchronous completion framework for neovim.
* [fzf](https://github.com/junegunn/fzf): A command-line fuzzy finder written in Go.
* [ctrlp](https://github.com/ctrlpvim/ctrlp.vim): Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder.
* [nerdcommenter](https://github.com/scrooloose/nerdcommenter): Vim plugin for intensely orgasmic commenting.
* [vimproc](https://github.com/Shougo/vimproc.vim): Interactive command execution in Vim.
* [supertab](https://github.com/ervandew/supertab): Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs.
* [syntastic](https://github.com/scrooloose/syntastic): Syntax checking hacks for vim.
* [vim-airline](https://github.com/bling/vim-airline): Lean & mean status/tabline for vim that's light as air.
* [vim-easymotion](https://github.com/Lokaltog/vim-easymotion): EasyMotion provides a much simpler way to use some motions in vim.
* [vim-trailing-whitespace](https://github.com/bronson/vim-trailing-whitespace): Highlights trailing whitespace in red and provides :FixWhitespace to fix it.
* [vim-devicons](https://github.com/ryanoasis/vim-devicons): adds font icons (glyphs ★♨☢) to programming languages, libraries, and web developer filetypes for: NERDTree, powerline, vim-airline, ctrlp, unite, lightline.vim, vim-startify, vimfiler, and flagship.
* [ferret](https://github.com/wincent/ferret): Enhanced multi-file search for Vim.
* [vim-bufonly](https://github.com/schickling/vim-bufonly): Delete all the buffers except the current buffer.
* [splitjoin](https://github.com/AndrewRadev/splitjoin.vim): A vim plugin that simplifies the transition between multiline and single-line code.
* [vim-surround](https://github.com/tpope/vim-surround): surround.vim: quoting/parenthesizing made simple.
* [delimitmate](https://github.com/raimondi/delimitmate): Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc.
* [taboo](https://github.com/gcmt/taboo.vim): Few utilities for pretty tabs.
##### Color schemes
* [gruvbox](https://github.com/morhetz/gruvbox): Retro groove color scheme for Vim.
##### Syntax highlighting
* [php](https://github.com/StanAngeloff/php.vim): Up-to-date PHP syntax file (5.3, 5.4 & 5.5 support; basic 5.6 support).
* [html5](https://github.com/othree/html5.vim): HTML5 omnicomplete and syntax.
* [vim-javascript](https://github.com/pangloss/vim-javascript): Vastly improved Javascript indentation and syntax support in Vim.
* [vim-json](https://github.com/elzr/vim-json): A better JSON for Vim: distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing. Pathogen-friendly.
* [vim-markdown](https://github.com/plasticboy/vim-markdown): Markdown Vim Mode.
* [vim-less](https://github.com/lunaru/vim-less): LessCSS Syntax support in Vim.
