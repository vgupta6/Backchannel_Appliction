class VoteForPost < ActiveRecord::Base

  attr_accessible :user_account_id, :post_id

  belongs_to :post
  belongs_to :user_account
end
