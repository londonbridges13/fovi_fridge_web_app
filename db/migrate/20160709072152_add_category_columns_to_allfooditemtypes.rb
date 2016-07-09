class AddCategoryColumnsToAllfooditemtypes < ActiveRecord::Migration
  def change
    add_column :food_items, :categories, :string, array:true, default: []
    add_column :basic_food_items, :categories, :string, array:true, default: []
    add_column :suggested_food_items, :categories, :string, array:true, default: []
  end
end
