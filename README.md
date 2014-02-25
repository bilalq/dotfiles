#This repo contains my personal customizations for:#
* The Awesome window manager
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

Do be careful, as these commands will overwrite whatever existing configuration
you have.

You'll also need to download a patched font for powerline if you want the fancy
symbols in Vim. That's optional though.
