class AddTagsToBasicfooditems < ActiveRecord::Migration
  def change
    add_column :basic_food_items, :tags, :string, array: true, default: []
  end
end
