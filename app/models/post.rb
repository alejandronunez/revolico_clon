class Post < ActiveRecord::Base
  validates :price, :subject, :email, :categories, :presence => true

  has_attached_file :image1, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  has_attached_file :image2, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  has_attached_file :image3, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :image1, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :image2, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :image3, :content_type => /\Aimage\/.*\Z/

  has_and_belongs_to_many :categories

end
