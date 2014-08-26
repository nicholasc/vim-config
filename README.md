Introduction
===========
I find this configuration to be very simple yet powerful. I'm trying to get VIM to be very versatile while keeping everything lightweight and easy to use. This is the configuration that I use every day at work and it works great for me. I'm always open to suggestions/contributions. Thanks for stopping by and I hopefully you'll enjoy my config.

N.B.: This read me is currently written for Mac OSX only. It should not be too complicated to install under Linux. Windows... I have no idea.

Requirements
============
There are some dependencies in order to get this configuration working properly and smoothly. Here is a list of all thirdparty libraries you will need on your computer before you can install. Please note that if you install these dependencies via Homebrew(http://brew.sh/), you will most likely have to added their locations to your PATH.

* [CMake](http://www.cmake.org/cmake/resources/software.html): Make is a family of tools designed to build, test and package software. CMake is used to control the software compilation process using simple platform and compiler independent configuration files.

	I recommend installing CMake with Homebrew(http://brew.sh/) using the following command:

		brew install cmake

* [Ruby](https://www.ruby-lang.org/en/): A dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write.

	I recommend install Ruby with Homebrew(http://brew.sh/) using the following command:

		brew install ruby

* [Python](https://www.python.org/): Python is a programming language that lets you work quickly and integrate systems more effectively.

	I recommend install Ruby with Homebrew(http://brew.sh/) using the following command:

		brew install python

* [ctags](https://github.com/shawncplus/phpcomplete.vim/wiki/Patched-ctags): Follow the instructions on the Patched-ctags repository to compile it from source and get better completion for PHP or use the following commands to install via brew:

		curl https://gist.githubusercontent.com/complex857/9570127/raw/dec0f388be51d9ab6888db6d0ee3e82dfc37837c/ctags-better-php.rb > /usr/local/Library/Formula/ctags-better-php.rb
		brew install ctags-better-php

* [MacVim](https://code.google.com/p/macvim/): MacVim must be compiled with python & lua support. Using brew, MacVim comes with python by default. We must precise to brew to build the formula with lua support like so:

		brew install macvim --with-lua

Manual Installation
===================

1. Check out the source from github:

		git clone https://github.com/nicholasc/vim-config.git ~/.vim

2. Create symlinks for vimrc & gvim:

		ln -s ~/.vim/vimrc ~/.vimrc
		ln -s ~/.vim/gvimrc ~/.gvimrc

3. Clone vundle repository inside the bundle folder:

		git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim

4. Open vim and install the plugins using the following command:
	
		:PluginInstall

5. The last step here is to compile the vimproc extension for Vim:

		cd ~/.vim/bunder/vimproc
		make

You should be good to go now. Make sure you read the usage section to make sure you're using the full potential of this config.

Plugins
=======

All the plugins here are clones of their original repository. Vundle is being used as a plugin manager. To update these plugins simply use :PluginUpdate. To list them, use :PluginList.

Here is a list of all the available plugin with this config:

* [CtrlP](https://github.com/kien/ctrlp.vim): Fuzzy file, buffer, mru, tag, etc finder.

* [grep](https://github.com/yegappan/grep): Plugin to integrate Grep search tools with Vim.

* [neocomplete](https://github.com/Shougo/neocomplete.vim): Next generation completion framework after neocomplcache.

* [nerdcommenter](https://github.com/scrooloose/nerdcommenter): Vim plugin for intensely orgasmic commenting.

* [nerdtree](https://github.com/scrooloose/nerdtree): A tree explorer plugin for vim.

* [pdv](https://github.com/tobyS/pdv): PHP Documentor for VIM - Generates PHP docblocks.

* [php](https://github.com/StanAngeloff/php.vim): Up-to-date PHP syntax file (5.3, 5.4 & 5.5 support; basic 5.6 support).

* [phpcomplete](https://github.com/shawncplus/phpcomplete.vim): Improved PHP omnicompletion.

* [supertab](https://github.com/ervandew/supertab): Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs.

* [syntastic](https://github.com/scrooloose/syntastic): Syntax checking hacks for vim.

* [tagbar](https://github.com/majutsushi/tagbar): Vim plugin that displays tags in a window, ordered by scope.

* [vim-airline](https://github.com/bling/vim-airline): Lean & mean status/tabline for vim that's light as air.

* [vim-black](https://github.com/nicholasc/vim-black): A dark color scheme for Vim.

* [vim-easymotion](https://github.com/Lokaltog/vim-easymotion): EasyMotion provides a much simpler way to use some motions in vim.

* [vim-sensible](https://github.com/tpope/vim-sensible): Think of sensible.vim as one step above 'nocompatible' mode: a universal set of defaults that (hopefully) everyone can agree on.

* [vimproc](https://github.com/Shougo/vimproc.vim): Interactive command execution in Vim.

* [vimshell](https://github.com/Shougo/vimshell.vim): Powerful shell implemented by vim.
