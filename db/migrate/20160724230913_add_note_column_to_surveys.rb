class AddNoteColumnToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :note, :string
  end
end
