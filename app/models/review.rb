class Review < ApplicationRecord
  
  belongs_to :user
  belongs_to :restaurant

  validates :rating, presence: true
  validates :date, presence: true
  validates :comment, presence: true

 
  mount_uploader :image, ImageUploader
end

