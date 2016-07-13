class AddFoodDescColumnToBasicFoodItems < ActiveRecord::Migration
  def change
    add_column :basic_food_items, :food_desc, :string
  end
end
