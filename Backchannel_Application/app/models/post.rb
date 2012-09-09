class Post < ActiveRecord::Base
  attr_accessible :commentCount, :content, :createdBy, :title, :voteCount, :category_id

  belongs_to :category
  belongs_to :user_account
  has_many :comment  :dependent => :destroy

  validates :title, :presence => true
  validates :content, :presence => true
  validates :createdBy, :presence => true
  validates :category, :presence => true

end
