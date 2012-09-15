class Comment < ActiveRecord::Base
  attr_accessible :commenter, :content, :voteCount

  belongs_to :post
  belongs_to :user_account
end
