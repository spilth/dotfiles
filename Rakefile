SOURCE_DIR = "#{ENV['HOME']}/Dropbox/dotfiles/files"
TARGET_DIR = "#{ENV['HOME']}/"

task :default => :link

desc "Link dotfiles to DropBox"
task :link do
  puts SOURCE_DIR
  puts TARGET_DIR

  link_file(".bash_profile")
  link_file(".bashrc")
  link_file(".vimrc")
  link_dir(".vim")
  link_file(".gvimrc")
end

def link_file(file)
  if !File.exists?("#{TARGET_DIR}/#{file}")
    File.symlink("#{SOURCE_DIR}/#{file}", "#{TARGET_DIR}/#{file}")
  else
    puts "#{file} already exists in #{SOURCE_DIR}"
  end

end

def link_dir(dir)
  if !File.directory?("#{TARGET_DIR}/#{dir}")
    File.symlink("#{SOURCE_DIR}/#{dir}", "#{TARGET_DIR}/#{dir}")
  else
    puts "#{dir} already exists in #{SOURCE_DIR}"
  end
end

