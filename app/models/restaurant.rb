class Restaurant < ApplicationRecord
    belongs_to :owner 
    has_many :reviews 
    has_many :users, through: :reviews
end
