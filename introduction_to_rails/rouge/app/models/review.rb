class Review < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :reviewer

  has_many :comments, :as => :commentable
end
