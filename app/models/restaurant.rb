class Restaurant < ApplicationRecord
    has_many :reviews 
    belongs_to :category
    belongs_to :owner
    has_many :users, through: :reviews 

    mount_uploader :image, ImageUploader
end
