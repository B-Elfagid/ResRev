class AddCategoryIdToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :category_id, :integer
  end
end
