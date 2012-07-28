#This repo contains my personal customizations for:#
* Awesome window manager
* Bash
* Input
* JSHint
* Vim
* Xresources 

##Installation Instructions##
Eventually, I'll get around to writing a rake file for installation. In
the meantime, here's a way to get jumpstarted with my vim config, since that's
probably what you want:

    git clone --recursive https://github.com/bilalq/dotfiles.git
    cd dotfiles
    ln -s `pwd`/vimrc ~/.vimrc
    ln -s `pwd`/vim ~/.vim

If you forgot to use the `--recursive` flag or
are using an older version of git, run these commands:

    git submodule init
    git submodule update

You'll also need to download a patched font for powerline if you want the fancy
symbols. That's optional though. 

##Awesome Customizations##
* Modified order of layouts
* Changed default terminal to urxvt


##Bash Customizations##
* bashrc: Sources scripts, exports thing, and contains modified history settings
* bash\_aliases: Contains aliases for frequently used commands


##Input Customizations##
* Autocomplete ignores case
* Editing mode for prompt set to vi
* Key commands such as jj, gg, G, and <c-p> added


##JSHint Customizations##
* Only report first 10 errors
* Use ECMAScript 5 rules
* Allow comma-first style
* Restrict use of bitwise operators
* Require curly braces around loops and conditionals


##Vim Customizations##

###Plugins###
* CloseTag: Close last opened HTML Tag
* Coffee: Adds coffeescript support to vim
* Ctrl-P: Fuzzy file searching
* Fugitive: Git wrapper for vim
* Javascript: Better syntax highlighting and autoindentation for JS
* Jekyll: Rapid jekyll blogging in vim
* JSHint: Javascript linting in vim
* MarkDown: Adds markdown support to vim
* MatchIt: Tag jumping for html
* MatchTag: HTML tag highlighting
* NERDCommenter: Toggles commenting
* NERDTree: Project organizer
* Powerline: Awesome status line for vim
* Rails: Adds functions that assist with rails coding
* SnipMate: Code snippets; Contains 3 dependency bundles:
  * tlib\_vim
  * vim-addon-mw-utils
  * snipmate-snippets
* SuperTab: Use tab for auto-complete
* Surround: HTML manipulator
* Syntastic: Adds syntax checking
* Titanium: Adds Titanium support to vim

###Colorschemes###
* autumn
* awesome
* jellybeans
* lettuce
* molokai


##Xresources Customizations##
* Changed colors and modeled them after the jellybeans colorscheme
* Added support for clipboard, tabs, and proper font display in urxvt
* Set emacs cursor color

