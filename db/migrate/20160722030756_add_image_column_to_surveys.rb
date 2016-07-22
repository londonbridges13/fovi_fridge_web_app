class AddImageColumnToSurveys < ActiveRecord::Migration
  def up
    add_attachment :surveys, :image
  end

  def down
    remove_attachment :surveys, :image
  end
end
