class Restaurant < ApplicationRecord
    belongs_to :category #, optional: true
    belongs_to :user 
    has_many :reviews, :dependent => :destroy
    has_many :users, through: :reviews
    
   
    validates :image, presence: true
    validates :city, presence: true
    validates :country, presence: true
    validates :website, presence: true


    mount_uploader :image, ImageUploader

    def self.category
        c = where(:category_id => @category_id).order("created_at DESC")
    end 

    def average_review
        if self.reviews.blank?
            @average_review = 0
           else
            @average_review = self.reviews.average(:rating).round(1)
           end 
    end 
    
    def number_of_reviews
        @number_of_reviews = self.reviews.count 
    end 

end





