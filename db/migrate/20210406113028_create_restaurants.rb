class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :image
      t.string :cuisine
      t.string :city
      t.string :country
      t.string :address
      t.string :website
      t.integer :phone_number
      t.string :opening_hours
      t.text :features
      t.belongs_to :owner, null: false, foreign_key: true

      t.timestamps 
    end
  end
end
