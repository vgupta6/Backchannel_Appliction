class Category < ActiveRecord::Base
  attr_accessible :name

  has_many :post

  validates :name, :presence => true
end
