class RenameTypeColumnInSurveys < ActiveRecord::Migration
  def change
    rename_column :surveys, :type, :stype
  end
end
