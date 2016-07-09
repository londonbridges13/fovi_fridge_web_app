class CreateBasicFoodItems < ActiveRecord::Migration
  def change
    create_table :basic_food_items do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
