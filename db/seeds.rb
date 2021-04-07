# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


betty = User.create(username: "betty", email: "betty@gmail.com", password_digest: "password")
melat = User.create(username: "melat", email: "melat@email.com", password_digest: "password!!")

dave = Owner.create(first_name: "dave", last_name: "giaq", email: "dave@gmail.com", password_digest: "password5")
martha = Owner.create(first_name: "martha", last_name: "birhanu", email: "mar@gmail.com", password_digest: "password6")

soho = Restaurant.create(name: "Soho", image: nil, cuisine: "european", city: "london", country: "uk", website: "www.soho.com", owner_id: 1)
abyssinia = Restaurant.create(name: "Abyssinia", image: nil, cuisine: "ethiopian", city: "addis ababa", country: "ethiopia", website: "www.abyssinia.com", owner_id: 2)   

      
 Review.create(user: betty, restaurant: soho, rating: 4, category: "lunch", comment: "food was tasty", image: nil) 
 Review.create(user: melat, restaurant: abyssinia, rating: 3, category: "dinner", comment: "food was average", image: nil) 

      
       


