class CreateSuggestedFoodItems < ActiveRecord::Migration
  def change
    create_table :suggested_food_items do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
