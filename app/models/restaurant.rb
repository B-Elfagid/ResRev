class Restaurant < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :reviews, :dependent => :destroy
    has_many :users, through: :reviews
    
    validates :name, presence: true, uniqueness: true
    validates :image, presence: true
    validates :city, presence: true
    validates :country, presence: true
    validates :website, presence: true


    mount_uploader :image, ImageUploader
end

def average_review
    if @restaurant.reviews.blank?
        @average_review = 0
       else
        @average_review = @restaurant.reviews.average(:rating).round(1)
       end 
end 

def number_of_reviews
    @number_of_reviews = @restaurant.reviews.count 
end 
