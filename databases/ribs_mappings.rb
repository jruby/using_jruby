require 'rubygems'
require 'ribs'

Ribs::DB.define do |db|
  db.dialect = 'MySQL'
  db.uri = 'jdbc:mysql://localhost:3306/using_jruby?user=root&password='
  db.driver = 'com.mysql.jdbc.Driver'
end

# START:map
class Blog
  Ribs! :table => 'wp_blog',
        :identity_map => true do |blog|

    # ... mappings go here ...
# END:map

    # START:properties
    blog.blog_id.primary_key!
    blog.title :column => :blog_title
    # END:properties


    # START:associations
    blog.belongs_to    Owner
    blog.has_one       Layout, :name => :look
    blog.has_n         :posts
    # END:associations

    # START:skip
    blog.stats.avoid!
    blog.auth :avoid, :default => 'abc'
    # END:skip
# START:map
  end
end
# END:map
