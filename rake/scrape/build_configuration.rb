configuration do |c|
  c.compile_ruby_files = false
  c.target_jvm_version = 1.5

  # Exclude .java files from the generated .jar file.
  c.source_exclude_filter = Dir['lib/ruby/**/*.java'].map do |file|
    Regexp.new(File.basename(file).gsub(".", "\\.") + "$")
  end
end
