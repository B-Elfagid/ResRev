class User < ApplicationRecord
     has_many :restaurants
     has_many :reviews
     has_many :reviewed_restaurants, through: :reviews

   

    has_secure_password 

    validates :password, length: {in: 8..100}, confirmation: true
    validates :username, uniqueness: true, length: {in: 5..30}
    validates :email, presence: true, uniqueness: true, format: {with: /\A(?<username>[^@\s]+)@((?<domain_name>[-a-z0-9]+)\.(?<domain>[a-z]{2,}))\z/i}
 

    def self.from_omniauth(auth)
    self.find_or_create_by(provider: auth["provider"], uid: auth["uid"]) do |u|
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(20)
            u.username = auth['info']['name'].downcase.gsub(" ", "_")
        end 
    end 
end


