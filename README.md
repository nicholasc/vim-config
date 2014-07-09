Information
===========
This is a simple, yet powerfull configuration for development. I use this every day at work and it works great for me. I'm always open to suggestions/contributions or comments. Thanks & enjoy!

Dependencies
============

TODO: List all dependencies for the configuration to work correctly.

Manual Installation
===================

1. Check out the source from github:

	<code>git clone https://github.com/nicholasc/vim-config.git ~/.vim</code>

2. Clone vundle repository inside the bundle folder:

	<code>git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim</code>

3. Open vim and install the plugins using the following command:
	
	<code>:PluginInstall</code>

4. Once all the plugins are installed. You will need to compile an extension for Command-T. To do so open a terminal window and enter the following series of commands:

	<code>cd ~/.vim/bundle/Command-T/ruby/command-t
	ruby extconf.rb
	make</code>

You should be good to go now. 

Plugins
=======

TODO: Update the list of plugins to the ones in the vimrc config file.

All the plugins here are clones of their original repository. Vundle is being used as a plugin manager. To update these plugins simply use :PluginUpdate. To list them, use :PluginList.

Here is a list of all the available plugin with this config:

* [CommandT](https://github.com/wincent/Command-T): The Command-T plug-in provides an extremely fast, intuitive mechanism for
opening files and buffers with a minimal number of keystrokes.

* [Conque-Shell](https://github.com/vim-scripts/Conque-Shell): Conque is a Vim plugin which allows you to run interactive programs, such as bash on linux or powershell.exe on Windows, inside a Vim buffer.

* [grep](https://github.com/yegappan/grep): Plugin to integrate Grep search tools with Vim.


* [nerdcommenter](https://github.com/scrooloose/nerdcommenter): Vim plugin for intensely orgasmic commenting.


* [supertab](https://github.com/ervandew/supertab): Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs 

* [vim-easymotion](https://github.com/Lokaltog/vim-easymotion): EasyMotion provides a much simpler way to use some motions in vim.

* [vim-sensible](https://github.com/tpope/vim-sensible): Think of sensible.vim as one step above 'nocompatible' mode: a universal set of defaults that (hopefully) everyone can agree on.
