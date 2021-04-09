class Owner < ApplicationRecord
    has_many :restaurants
    has_many :reviews, through: :restaurants 
    has_secure_password 
    validates :first_name, presence:true 
    validates :last_name, presence:true 
    validates :email, uniqueness: true, presence:true 
end
