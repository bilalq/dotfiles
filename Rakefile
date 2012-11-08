require 'rake'

task :init do
  sh "git submodule init"
  sh "git submodule update"
end

task :up do
  sh "git submodule foreach git pull"
end

task :vim do
  begin
    sh "ln -s `pwd`/vim/vimrc ~/.vimrc"
    sh "ln -s `pwd`/vim/gvimrc ~/.gvimrc"
    sh "ln -s `pwd`/vim/xvimrc ~/.xvimrc"
    sh "ln -s `pwd`/vim/vim ~/.vim"
  rescue
    puts "================================================"
    puts "Vim configuration files already exist. Skipping."
    puts "================================================"
  end
end

task :simple_vim do
  begin
    sh "ln -s `pwd`/vim/simple_vimrc ~/.vimrc"
  rescue
    puts "===================================="
    puts "Vimrc file already exists. Aborting."
    puts "===================================="
  end
end

task :misc do
  targets = ["inputrc", "jshintrc", "irbrc", "tmux.conf"]
  targets.each do |target|
    begin
      sh "ln -s `pwd`/misc/#{target} ~/.#{target}"
    rescue
      puts "====================================================="
      puts "#{target} configuration file already exist. Skipping."
      puts "====================================================="
    end
  end
end

task :awesome do
  sh "ln -s `pwd`/awesome ~/.config/awesome"
end

task :bash do
  begin
    sh "ln -s `pwd`/bash/bashrc ~/.bashrc"
    sh "ln -s `pwd`/bash/bash_aliases ~/.bash_aliases"
    sh "ln -s `pwd`/bash/bash_prompt ~/.bash_aliases"
  rescue
    puts "=================================================="
    puts "Bash configurations files already exist. Skipping."
    puts "=================================================="
  end
end

task :ilabs => [:vim, :misc] do
  sh "rm ~/.bashrc"
  sh "ln -s `pwd`/bash/ilab_bashrc ~/.bashrc"
end

task :git do
  begin
    sh "ln -s `pwd`/git/gitignore_global ~/.gitignore_global"
    sh "ln -s `pwd`/git/gitconfig ~/.gitconfig"
  rescue
    puts "================================================"
    puts "Git configuration files already exist. Skipping."
    puts "================================================"
  end
end

task :me => [:vim, :misc, :bash, :git]

task :clean do
  targets = [
    "vim",
    "vimrc",
    "gvimrc",
    "xvimrc",
    "bashrc",
    "bash_aliases",
    "bash_prompt",
    "jshintrc",
    "inputrc",
    "irbrc",
    "tmux.conf",
    "gitconfig",
    "gitignore_global"
  ]

  targets.each do |target|
    begin
      sh "rm ~/.#{target}"
    rescue
    end
  end
end
