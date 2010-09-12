require 'rubygems'
require 'active_record'

class Blog < ActiveRecord::Base
  validates_presence_of :title, :message => "should be provided"

  validates_numericality_of :age, :only_integer => true

  validates_length_of :title, :in => 5..35
  validates_length_of :posts, :maximum => 30

  validates_uniqueness_of :title

  validates_inclusion_of :blog_type, :in => %w(work personal)

  validates_format_of :contact, :with => /^.+?@.+?$/

  validates_each :title, :text do |record, attr, value|
    unless value.buddha_nature?
      record.errors.add attr, "doesn't have the Buddha nature"
    end
  end
end
