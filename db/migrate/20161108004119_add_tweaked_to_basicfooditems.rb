class AddTweakedToBasicfooditems < ActiveRecord::Migration
  def change
    add_column :basic_food_items, :tweaked, :boolean
  end
end
