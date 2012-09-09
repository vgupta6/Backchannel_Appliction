class VoteForComment < ActiveRecord::Base

  attr_accessible :user_account_id, :comment_id

  belongs_to :comment
  belongs_to :user_account
end
