require 'rubygems'
require 'ribs'

Ribs::DB.define do |db|
  db.dialect = 'MySQL'
  db.uri = 'jdbc:mysql://localhost:3306/using_jruby?user=root&password='
  db.driver = 'com.mysql.jdbc.Driver'
end

class Blog
  Ribs! :table => 'wp_blog', 
        :identity_map => false do |blog|
    blog.blog_id.primary_key!

    blog.title     :column => :blog_title

    blog.belongs_to    Owner
    blog.has_one       Layout, :name => :look
    blog.has_n         :posts
#   blog.has_n         Post
    
    blog.stats.avoid!
    blog.auth :avoid, :default => 'abc'
  end
end
