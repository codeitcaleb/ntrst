class Photo < ApplicationRecord
  accepts_nested_attributes_for :tags, :locations
  
  has_one_attached :image_path

  has_many :tag_photos
  has_many :tags, through: :tag_photos

  has_many :locations

  belongs_to :user
end
