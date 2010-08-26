desc "Compiles the code"
task :compile

desc "Compiles the test code"
task :compile_test => :compile

desc "Runs the tests"
task :test => :compile_test

desc "Creates the jar file"
task :jar => :test

task :default => :jar
