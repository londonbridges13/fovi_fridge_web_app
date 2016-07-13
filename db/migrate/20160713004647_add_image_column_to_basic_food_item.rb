class AddImageColumnToBasicFoodItem < ActiveRecord::Migration
  def up
    add_attachment :basic_food_items, :image
  end

  def down
    remove_attachment :basic_food_items, :image
  end
end
