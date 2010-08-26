require 'rubygems'
require 'active_record'

class Blog < ActiveRecord::Base
  set_table_name "WP_BLOG"
  set_primary_key "blog_id"

  belongs_to :owner, :class_name => 'Person'
  
  has_one :audit_log, :foreign_key => "blogger_id"

  has_many :posts
  has_many :authors, :through => :post
end
