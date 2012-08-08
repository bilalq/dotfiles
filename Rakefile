require 'rake'

task :init do
  #sh "git submodule init"
  #sh "git submodule update"
  #sh "git submodule foreach git pull"
end

task :update do
  sh "git submodule update"
  sh "git submodule foreach git pull"
end

task :vim do
  sh "ln -s `pwd`/vim/vimrc ~/.vimrc"
  sh "ln -s `pwd`/vim/gvimrc ~/.gvimrc"
  sh "ln -s `pwd`/vim/vim ~/.vim"
end

task :simple_vim do
  sh "ln -s `pwd`/vim/simple_vimrc ~/.vimrc"
end

task :jshint do
  sh "ln -s `pwd`/misc/jshint ~/.jshintrc"
end

task :input do
  sh "ln -s `pwd`/misc/inputrc ~/.inputrc"
end

task :awesome do
  sh "ln -s `pwd`/awesome ~/.config/awesome"
end

task :bash do
  sh "ln -s `pwd`/bash/bash_aliases ~/.bash_aliases"
  sh "ln -s `pwd`/bash/bashrc ~/.bashrc"
end

task :ilabs => [:init, :vim, :jshint] do
  sh "ln -s `pwd`/bash/ilab_bashrc ~/.bashrc"
end

task :me => [:init, :vim, :input, :jshint, :bash] do
  sh "ln -s `pwd`/git/gitconfig ~/.gitconfig"
  sh "ln -s `pwd`/git/gitignore_global ~/.gitignore_global"
end
