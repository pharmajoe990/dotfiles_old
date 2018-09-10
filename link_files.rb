#!/usr/bin/env ruby

require 'FileUtils'


# unless specified, no path means target dir is $HOME
dotFileLocations = { 
  'aliases' => '.aliases',
  'gitconfig' => '.gitconfig',
  'nvimrc' => '.nvimrc',	# Need to source this in ~/.config/nvim/init.vim
  'zshenv' =>  '.zshenv',
  'zshrc' => '.zshrc',
  'tmux.conf' => '.tmux.conf'
}

homeDir = File.expand_path('~') + File::SEPARATOR
dotFilePath = homeDir + '.dotfiles' + File::SEPARATOR
dotFileLocations.each { |file, targetLocation|
  begin
    FileUtils.ln_s dotFilePath + file, homeDir + targetLocation 
  rescue Errno::EEXIST
    puts "#{homeDir + targetLocation} already exists, skipping"
  else
    puts "#{homeDir + targetLocation} created"
  end
}


