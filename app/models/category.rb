class Category < ActiveRecord::Base
  validates :name, :presence => true

  belongs_to :parent_category
  has_and_belongs_to_many :posts
end
