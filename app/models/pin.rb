class Pin < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, :styles => {:large => "1100x1100>", :medium => "600x600>", :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]


  validates :image, presence: true
  validates :description, presence: true
end