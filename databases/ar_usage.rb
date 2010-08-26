require 'rubygems'
require 'active_record'

b = Blog.new :author => "Ola Bini"
b.title = "My first blog"
b.save

Blog.create :title => "My second blog"

b = Blog.find(1)
b.title = "My updated blog"
b.posts.create(:title => "First post", 
               :body =>"This is a post about something")
b.save

blogs = Blog.find(:all)
blogs[0].destroy

