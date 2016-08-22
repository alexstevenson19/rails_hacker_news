class Comment < ActiveRecord::Base
  belongs_to :article
  belongs_to :commenter, class_name: 'User'
  has_many :votes, as: :votable
end
