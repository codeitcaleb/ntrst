class Photo < ApplicationRecord
   
  has_one_attached :image

  has_many :tag_photos
  has_many :tags, through: :tag_photos

  belongs_to :locations

  belongs_to :user

  accepts_nested_attributes_for :locations, :tags
  
end
