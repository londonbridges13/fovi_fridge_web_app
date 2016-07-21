class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :question

      t.timestamps null: false
    end
  end
end
