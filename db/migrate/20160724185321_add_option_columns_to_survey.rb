class AddOptionColumnsToSurvey < ActiveRecord::Migration
  def change
    add_column :surveys, :option1, :string
    add_column :surveys, :option2, :string
    add_column :surveys, :option3, :string
    add_column :surveys, :option4, :string
    add_column :surveys, :option5, :string
  end
end
