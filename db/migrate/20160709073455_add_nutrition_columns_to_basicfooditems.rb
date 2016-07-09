class AddNutritionColumnsToBasicfooditems < ActiveRecord::Migration
  def change
    add_column :basic_food_items, :calories, :integer
    add_column :basic_food_items, :total_fat, :float
    add_column :basic_food_items, :saturated_fat, :float
    add_column :basic_food_items, :unsaturated_fat, :float
    add_column :basic_food_items, :protien, :integer
    add_column :basic_food_items, :carbohydrate, :integer
    add_column :basic_food_items, :fiber, :integer
    add_column :basic_food_items, :food_category, :string
    add_column :basic_food_items, :iron, :float
    add_column :basic_food_items, :vitamin_a, :float
    add_column :basic_food_items, :vitamin_b, :float
    add_column :basic_food_items, :vitamin_b6, :float
    add_column :basic_food_items, :vitamin_b12, :float
    add_column :basic_food_items, :vitamin_c, :float
    add_column :basic_food_items, :vitamin_d, :float
    add_column :basic_food_items, :vitamin_e, :float
    add_column :basic_food_items, :vitamin_k, :float
    add_column :basic_food_items, :potassium, :float
    add_column :basic_food_items, :sodium, :float
    add_column :basic_food_items, :niacin, :float
    add_column :basic_food_items, :folate, :float
    add_column :basic_food_items, :zinc, :float
    add_column :basic_food_items, :thiamin, :float
    add_column :basic_food_items, :riboflavin, :float
    add_column :basic_food_items, :calcium, :float
    add_column :basic_food_items, :magnesium, :float
    add_column :basic_food_items, :cholesterol, :float
    add_column :basic_food_items, :caffeine, :float
    add_column :basic_food_items, :five_recipes, :string, array:true, default:[]
    add_column :basic_food_items, :diets, :string, array:true, default:[]
  end
end
