require 'rubygems'
require 'active_record'

b1 = Blog.new :author => 'Ola Bini'
b1.title = 'My first blog'
b1.save

Blog.create :title => 'My second blog'

b2 = Blog.find(2)
b2.title = 'My second blog, revisited'
b2.posts.create(:title => 'First post',
                :body  => 'This is a post about something')
b2.save

my_blogs = Blog.where(:author => 'Ola Bini')
my_blogs.first.destroy
