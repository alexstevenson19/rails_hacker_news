class User < ActiveRecord::Base
  has_many :comments, foreign_key: 'commenter_id'
  has_many :articles, foreign_key: 'poster_id'
  has_many :votes

end
