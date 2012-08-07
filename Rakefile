require 'rake'

task :init do
  sh "git submodule init"
  sh "git submodule update"
  sh "git submodule foreach git pull"
end

task :vim do
  sh "ln -s `pwd`/vimrc ~/.vimrc"
  sh "ln -s `pwd`/vim ~/.vim"
end

task :bash do
  sh "ln -s `pwd`/bash_aliases ~/.bash_aliases"
end

task :ilabs do
end
