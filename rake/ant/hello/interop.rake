require 'ant'

ant_import

task :goodbye => :hello do
  puts 'Goodbye from Rake!'
end
