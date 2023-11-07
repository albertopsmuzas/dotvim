# DOTVIM

## BRIEF
Collection of plugins and configuration files for vim which I use
during my everyday work.

## DETAILS
* The resulting workflow is quite oriented to deal with FORTRAN programming.
* Plugins should be installed as a bundle, where pathogen manages them. They are
  included as submodules.

## INSTALLATION FOR VIM
1. Type:
```bash
    git clone https://github.com/albertopsmuzas/dotvim ~/.vim
```
2. Create symlinks:
```bash
    ln -s ~/.vim/vimrc ~/.vimrc
```
3. Fetch submodules:
```bash
    cd ~/.vim
    git submodule init
    git submodule update
```
4. Load documentation:
	* Open vim in normal mode and type
```vim
        :Helptags
```
5. Download exuberant ctags package (example for debian)
```bash
    sudo apt-get install exuberant-ctags
```

## INSTALATION FOR NEOVIM
1. Perform vim installation
2. Type:
```bash
    ln -s ~/.vim ~/.config/nvim
```

## ADD NEW PLUGIN
- Find the developer's repo page (in github perhaps) and add it to boundle
```bash
    git submodule add <path to remote repo> ~/.vim/bundle/<remote repo name>
```

## TIPS WHEN UPDATING SUBMODULES
- Update each submodule to be up to date with dotvim repo
```bash
    cd ~/.vim && git submodule update
```
- Update each submodule from their respective origins. You may end up ahead of dotvim repo
```bash
    cd ~/.vim && git submodule update --remote
```
- If submodules at bundle are empty that is because you updated the head of the repo but
  files were not created actually. To solve this, type:
```bash
    cd ~/.vim && git submodule update --init --recursive
```

## SUGGESTIONS
* Add new snippets at `~/.vim/snippets` folder.
* Add file-type specific plugins at `~/.vim/ftplugins`.
* Install powerline fonts or you'll see some weird symbols plotted in airline. You can
  modify my `~/.vim/vimrc` file and use other themes that don't need powerline fonts.
  For debian, type: apt-get install fonts-powerline.

## ISSUES
* Apparently, there are some problems at least with vim to open markdown-preview in a new
  window if there is not an already existent firefox instance. Maybe there is a way to solve this.
* To make markdown-preview work, open neovim and type:
```vim
    call mkdp#util#install()
```
