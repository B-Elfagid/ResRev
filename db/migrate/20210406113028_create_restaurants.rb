class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cuisine
      t.string :city
      t.string :country
      t.string :adress
      t.text :website
      t.integer :phone_number
      t.string :opening_hours
      t.text :features

      t.timestamps
    end
  end
end
