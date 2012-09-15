class Post < ActiveRecord::Base
  attr_accessible :commentCount, :voteCount, :content, :createdBy, :title, :category_id

  belongs_to :category
  belongs_to :user_account
  has_many :comments,  :dependent => :destroy

  validates :title, :presence => true
  validates :content, :presence => true
  validates :createdBy, :presence => true
  validates :category, :presence => true

  #accepts_nested_attributes_for :category

end
