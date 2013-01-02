SOURCE_DIR = "#{ENV['HOME']}/Dropbox/dotfiles/files"
TARGET_DIR = "#{ENV['HOME']}/"

FILES = %w[.bashrc .bash_profile .vimrc .gitconfig .gitignore .tmux.conf]
DIRS = %w[.vim .tmuxinator]

task :default => :link

desc "Link dotfiles to DropBox"
task :link do
  puts "Souce Directory: #{SOURCE_DIR}"
  puts "Target Directory: #{TARGET_DIR}"
    
  FILES.each { |file| link_file(file) }
  DIRS.each { |dir| link_dir(dir) }
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

