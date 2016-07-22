class AddTypeColumnAndPreQuestionColumnToSurvey < ActiveRecord::Migration
  def up
    add_column :surveys, :type, :string
    add_column :surveys, :pre_question, :boolean
  end
  
  def down
    remove_column :surveys, :type
    remove_column :surveys, :pre_question
  end
end
