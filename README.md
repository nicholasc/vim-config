Introduction
===========
The main goal with this vim configuration is to keep things lightweight, fast and easy to use. I use it everyday both at work and at home and it works great for me. It supports Mac OS X & Windows. It will be adapted for Linux shortly. I constantly review and modifiy this configuration and I'm always open to suggestions and/or contributions.

Thanks for stopping by and hopefully you find something of use.

Requirements
============

Mac OS X:
* [MacVim](https://code.google.com/p/macvim/): MacVim must be compiled with python & lua support. Using brew, MacVim comes with python by default. We must inform brew to build the formula with lua support:

		brew install macvim --with-lua

Windows:
* [Vim for Windows](https://bitbucket.org/Haroogan/vim-for-windows/downloads): Download the version compiled with both Python and Lua.

Manual Installation
===================

1. Check out the current source from github:

	* Mac OS X & Windows:

		    git clone https://github.com/nicholasc/vim-config.git $HOME/.vim

2. Create symlinks for vimrc:

    * Mac OS X:

		    ln -s $HOME/.vim/vimrc $HOME/.vimrc

    * Windows:

            cmd /c mklink $HOME/.vimrc $HOME/.vim/.vimrc

3. Clone vundle repository inside the bundle folder:

    *On Windows, follow these [steps]{https://github.com/gmarik/Vundle.vim/wiki/Vundle-for-Windows<Plug>(neocomplete_fallback) before continuing.*

		git clone https://github.com/gmarik/Vundle.vim $HOME/.vim/bundle/Vundle.vim

4. Open vim, discard errors and install the plugins using the following command:

        :BundleInstall

5. Install Vimproc's dependencies using the following command:

        :VimProcInstall

Plugins
=======

All the plugins here are clones of their original repository. Vundle is being used as a plugin manager. To update these plugins simply use :PluginUpdate. To list them, use :PluginList.

Here is a list of all the available plugin with this config:

* [ack](https://github.com/mileszs/ack.vim): Vim plugin for the Perl module / CLI script 'ack'.

* [CtrlP](https://github.com/kien/ctrlp.vim): Fuzzy file, buffer, mru, tag, etc finder.

* [gruvbox](https://github.com/morhetz/gruvbox): Retro groove color scheme for Vim.

* [html5](https://github.com/othree/html5.vim): HTML5 omnicomplete and syntax.

* [neocomplete](https://github.com/Shougo/neocomplete.vim): Next generation completion framework after neocomplcache.

* [nerdcommenter](https://github.com/scrooloose/nerdcommenter): Vim plugin for intensely orgasmic commenting.

* [nerdtree](https://github.com/scrooloose/nerdtree): A tree explorer plugin for vim.

* [php](https://github.com/StanAngeloff/php.vim): Up-to-date PHP syntax file (5.3, 5.4 & 5.5 support; basic 5.6 support).

* [phpcomplete](https://github.com/shawncplus/phpcomplete.vim): Improved PHP omnicompletion.

* [supertab](https://github.com/ervandew/supertab): Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs.

* [syntastic](https://github.com/scrooloose/syntastic): Syntax checking hacks for vim.

* [tabular](https://github.com/godlygeek/tabular): Vim script for text filtering and alignment.

* [tagbar](https://github.com/majutsushi/tagbar): Vim plugin that displays tags in a window, ordered by scope.

* [vim-airline](https://github.com/bling/vim-airline): Lean & mean status/tabline for vim that's light as air.

* [vim-black](https://github.com/nicholasc/vim-black): A dark color scheme for Vim.

* [vim-easymotion](https://github.com/Lokaltog/vim-easymotion): EasyMotion provides a much simpler way to use some motions in vim.

* [vim-fugitive](https://github.com/tpope/vim-fugitive): a Git wrapper so awesome, it should be illegal.

* [vim-gitgutter ](https://github.com/airblade/vim-gitgutter): A Vim plugin which shows a git diff in the gutter (sign column) and stages/reverts hunks.

* [vim-javascript](https://github.com/pangloss/vim-javascript): Vastly improved Javascript indentation and syntax support in Vim.

* [vim-json](https://github.com/elzr/vim-json): A better JSON for Vim: distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing. Pathogen-friendly.

* [vim-markdown](https://github.com/plasticboy/vim-markdown): Markdown Vim Mode.

* [vim-sensible](https://github.com/tpope/vim-sensible): Think of sensible.vim as one step above 'nocompatible' mode: a universal set of defaults that (hopefully) everyone can agree on.

* [vim-seti](https://github.com/nicholasc/vim-seti): A color scheme for Vim inspired by Jesse Weed's seti-syntax for Atom.
