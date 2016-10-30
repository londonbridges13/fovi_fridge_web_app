class AddMeasurementNumberToBasicfooditems < ActiveRecord::Migration
  def change
    add_column :basic_food_items, :measurement_number, :float
  end
end
