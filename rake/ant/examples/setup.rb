require 'ant'

ant do
  echo :message => "Setting up new project"
  echo :message => "Project description goes here.", :file => "README.txt"
  mkdir :dir => "lib"
  mkdir :dir => "test"
end
