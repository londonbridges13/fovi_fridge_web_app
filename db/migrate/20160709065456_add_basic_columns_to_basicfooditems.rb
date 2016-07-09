class AddBasicColumnsToBasicfooditems < ActiveRecord::Migration
  def change
    add_column :basic_food_items, :is_basic, :boolean
    add_column :basic_food_items, :fridge_amount, :integer
    add_column :basic_food_items, :shoppinglist_amount, :integer
    add_column :basic_food_items, :mylist_amount, :integer
    add_column :basic_food_items, :measurement_type, :string
    add_column :basic_food_items, :full_amount, :integer
    add_column :basic_food_items, :current_amount, :integer
    add_column :basic_food_items, :usually_expires, :integer #a week :7 //days
    add_column :basic_food_items, :expiration_date, :datetime
    add_column :basic_food_items, :modified_date, :datetime
  end
end
