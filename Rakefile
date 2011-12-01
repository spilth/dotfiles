SOURCE_DIR = "#{ENV['HOME']}/Dropbox/dotfiles/files"
TARGET_DIR = "#{ENV['HOME']}/"

task :default => :link

desc "Link dotfiles to DropBox"
task :link do
  link_file(".vimrc")
	link_dir(".vim")
end

def link_file(file)
  if !File.exists?("#{SOURCE_DIR}/#{file}")
		File.symlink("#{SOURCE_DIR}/#{file}", "#{TARGET_DIR}/#{file}")
	end
end

def link_dir(dir)
	if !File.directory?("#{SOURCE_DIR}/#{dir}")
	  File.symlink("#{SOURCE_DIR}/#{dir}", "#{TARGET_DIR}/#{dir}")
	end
end


