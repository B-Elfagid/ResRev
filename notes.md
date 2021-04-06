Restaurant Review App(ResRev)

User - username, email, password_digest, provider, uid 
Restaurant - name, cuisine, city, country, address, wesite, phone_number, opening_hours, features
Review - rating, date, category(brunch, lunch, afternoon tea, dinner)
         comment, user_id, restaurant_id


User                                     Restaurant                        Review                     
has_many reviews                         has_many reviews                  belongs_to user           
has_many restaurants through reviews     has_many users through reviews    belongs_to restaurant 
