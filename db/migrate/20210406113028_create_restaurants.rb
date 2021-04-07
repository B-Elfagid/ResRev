class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :image
      t.string :cuisine
      t.string :city
      t.string :country
      t.string :website
      t.belongs_to :owner, null: false, foreign_key: true

      t.timestamps 
    end
  end
end
