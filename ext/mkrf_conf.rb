require 'rubygems/dependency_installer.rb'

#Load up the rubygem's dependency installer to 
#installer the gems we want based on the version
#of Ruby the user has installed
installer = Gem::DependencyInstaller.new
begin
  if RUBY_VERSION > '1.9'
    installer.install 'pry-byebug', '~> 1.2.1'
  else 
    installer.install 'pry-debugger', '~> 0.2.2'
  end

  rescue
    #Exit with a non-zero value to let rubygems something went wrong
    exit(1)
end  
