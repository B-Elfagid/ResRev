class Restaurant < ApplicationRecord
    has_many :reviews 
    belongs_to :owner
    has_many :users, through: :reviews
end
