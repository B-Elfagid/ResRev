class Restaurant < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :reviews

    mount_uploader :image, ImageUploader
end

def average_review
    if @restaurant.reviews.blank?
        @average_review = 0
       else
        @average_review = @restaurant.reviews.average(:rating).round(2)
       end 
end 
