class Article < ActiveRecord::Base
  has_many :votes, as: :votable
  has_many :comments
  belongs_to :poster, class_name: "User"
end
