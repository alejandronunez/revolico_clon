class Category < ActiveRecord::Base
  belongs_to :parent_category
  has_and_belongs_to_many :posts
end
