SOURCE_DIR = "#{ENV['HOME']}/Dropbox/dotfiles/files"
TARGET_DIR = "#{ENV['HOME']}/"

task :default => :link

desc "Link dotfiles to DropBox"
task :link do
  puts "Souce Directory: #{SOURCE_DIR}"
  puts "Target Directory: #{TARGET_DIR}"

  link_file(".bashrc")
  link_file(".bash_profile")

  link_file(".vimrc")
  link_dir(".vim")

  link_file(".gitconfig")
  link_file(".gitignore")

  link_file(".tmux.conf")
  link_dir(".tmuxinator")
end

def link_file(file)
  if !File.exists?("#{TARGET_DIR}/#{file}")
    link_path(file)
  else
    puts "#{file} already exists in #{SOURCE_DIR}"
  end

end

def link_dir(dir)
  if !File.directory?("#{TARGET_DIR}/#{dir}")
    link_path(dir)
  else
    puts "#{dir} already exists in #{SOURCE_DIR}"
  end
end

def link_path(path)
  puts "Symlinking #{SOURCE_DIR}/#{path} as #{TARGET_DIR}/#{path}"
  File.symlink("#{SOURCE_DIR}/#{path}", "#{TARGET_DIR}/#{path}")
end

