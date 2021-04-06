              Restaurant Review App(ResRev)

# User - username, email, password_digest, provider, uid 
# Restaurant - name, cuisine, city, country, address, wesite, phone_number, opening_hours, features, owner_id 
# Review - rating, date, category(brunch, lunch, afternoon tea, dinner), comment, user_id, restaurant_id
# owner - first_name, last_name, email, password_digest 


# User                                                                             
 - has_many reviews                                                  
 - has_many restaurants through reviews       

# Restaurant 
 - belongs_to owner 
 - has_many reviews 
 - has_many users through reviews

# Review
 - belongs_to user
 - belongs_to restaurant

# Owner 
  - has_many restaurants 
  - has many reviews through restaurants 
