#This repo contains my personal customizations for:#
* Awesome window manager
* Bash
* Git
* Vim
* Miscellaneous other things


##Installation Instructions##
Get the repo:

    git clone --recursive https://github.com/bilalq/dotfiles.git
    cd dotfiles

If you forgot to use the `--recursive` flag or
are using an older version of git, run this command:

    rake up

From here, you can install whatever tickles your fancy. For example:

    rake vim
    rake misc
    #etc...

You'll also need to download a patched font for powerline if you want the fancy
symbols in Vim. That's optional though.

##Awesome Customizations##
* Modified order of layouts
* Changed default terminal to urxvt


##Bash Customizations##
* bashrc: Sources scripts, exports things, and contains modified history settings
* bash\_aliases: Contains aliases for frequently used commands
* ilab\_bashrc: This is a bashrc I use for machines at Rutgers

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
* solarized


##Miscellaneous Customizations##

###Input Customizations###
* Autocomplete ignores case
* Editing mode for prompt set to vi
* Key commands such as jj, gg, G, and <c-p> added


###JSHint Customizations###
* Only report first 10 errors
* Use ECMAScript 5 rules
* Allow comma-first style
* Restrict use of bitwise operators
* Require curly braces around loops and conditionals

###Xresources Customizations###
* Changed colors and modeled them after the jellybeans colorscheme
* Added support for clipboard, tabs, and proper font display in urxvt
* Set emacs cursor color

