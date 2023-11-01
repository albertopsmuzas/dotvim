# DOTVIM

## BRIEF
Compilation of plugins and configuration files for vim which I use
during my everyday work.

## DETAILS
* The resulting workflow is quite oriented to deal with FORTRAN 90,95,08 programming.
* Plugins should be installed as a bundle, where pathogen manages them. They are
  included as submodules.

## INSTALLATION FOR VIM
1. Type:
	* git clone https://github.com/albertopsmuzas/dotvim ~/.vim
2. Create symlinks:
	* ln -s ~/.vim/vimrc ~/.vimrc
3. Fetch submodules:
	* cd ~/.vim
	* git submodule init
	* git submodule update
4. Load documentation:
	* Open vim and type ":Helptags"
5. Download exuberant ctags package:
	* sudo apt-get install exuberant-ctags (debian)

## INSTALATION FOR NEOVIM
1. Perform vim installation
2. Type:
    * ln -s ~/.vim ~/.config/nvim

## ADD NEW PLUGIN
1. Find the developer's github page
2. Type:
	* git submodule add *repository* ~/.vim/bundle/*foo_name*

## UPDATE SUBMODULES
1. Update each submodule from dotvim repo:
    * cd ~/.vim && git submodule update
1. Update each submodule from their respective origins:
    * cd ~/.vim && git submodule update --remote

## SUGGESTIONS
* Add new snippets at ~/.vim/snippets folder.
* Add file-type specific plugins at ~/.vim/ftplugins.
* Install powerline fonts or you'll see some weird symbols plotted in airline. You can
  modify my ~/.vim/vimrc file and use other themes that don't need powerline fonts.
  For debian, type: apt-get install fonts-powerline.

## WARNINGS
* Apparently, there are some problems at least with vim to open markdown-preview in a new
  window if there is not an already existent firefox instance. Maybe there is a way to solve this.
