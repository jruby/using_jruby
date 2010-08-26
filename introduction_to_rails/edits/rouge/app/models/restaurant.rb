class Restaurant < ActiveRecord::Base
  validates_presence_of :name

  has_many :reviews
  has_many :comments, :as => :commentable

  scope :alphabetized, order("restaurants.name ASC")
end
