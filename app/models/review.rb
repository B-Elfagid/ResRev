class Review < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  mount_uploader :image, ImageUploader
end

