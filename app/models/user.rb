class User < ApplicationRecord
    has_many :restaurants
    has_many :reviews

    has_secure_password 
end
