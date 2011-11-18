SOURCE_DIR = "#{ENV['HOME']}/Dropbox/dotfiles/files"
TARGET_DIR = "#{ENV['HOME']}/"

task :default => :link

desc "Link dotfiles to DropBox"
task :link do
	File.symlink("#{SOURCE_DIR}/.vimrc", "#{TARGET_DIR}/.vimrc") 
end

