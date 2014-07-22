Introduction
===========
I find this configuration to be very simple yet powerful. I'm trying to get something as close as possible to a regular IDE while keeping everything lightweight and easy to use. This is the configuration that I use every day at work and it works great for me. I'm always open to suggestions/contributions. Thanks for stopping by and I hopefully you'll enjoy my config.

Requirements
============
There are some dependencies in order to get this configuration working properly and smoothly. Here is a list of all thirdparty libraries you will need on your computer before you can install.

* [CMake](http://www.cmake.org/cmake/resources/software.html): Click on this link to install CMake manually of follow the instructions bellow if you're a package manager person.

	Mac OS X: 
		I recommend installing CMake with Homebrew(http://brew.sh/) using the following command:

			brew install cmake

	Linux:
		If you are using as debian distribution, use the following command:
			
			sudo apt-get install cmake

		For redhat dstributions:
			
			sudo yum install cmake

* [Ruby]()

* [ctags](https://github.com/shawncplus/phpcomplete.vim/wiki/Patched-ctags): Follow the instructions on the Patched-ctags repository to compile it from source and get better completion for PHP.


Manual Installation
===================

1. Check out the source from github:

	<code>git clone https://github.com/nicholasc/vim-config.git ~/.vim</code>

2. Clone vundle repository inside the bundle folder:

	<code>git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim</code>

3. Open vim and install the plugins using the following command:
	
	<code>:PluginInstall</code>

4. The last step here is to compile the vimproc extension for Vim:

    <code>cd ~/.vim/bunder/vimproc</code>
    <code>make</code>

You should be good to go now. Make sure you read the usage section to make sure you're using the full potential of this config.

Plugins
=======

TODO: Update the list of plugins to the ones in the vimrc config file.

All the plugins here are clones of their original repository. Vundle is being used as a plugin manager. To update these plugins simply use :PluginUpdate. To list them, use :PluginList.

Here is a list of all the available plugin with this config:

* [grep](https://github.com/yegappan/grep): Plugin to integrate Grep search tools with Vim.


* [nerdcommenter](https://github.com/scrooloose/nerdcommenter): Vim plugin for intensely orgasmic commenting.


* [supertab](https://github.com/ervandew/supertab): Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs 

* [vim-easymotion](https://github.com/Lokaltog/vim-easymotion): EasyMotion provides a much simpler way to use some motions in vim.

* [vim-sensible](https://github.com/tpope/vim-sensible): Think of sensible.vim as one step above 'nocompatible' mode: a universal set of defaults that (hopefully) everyone can agree on.
