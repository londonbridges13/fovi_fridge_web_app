class AddFamilyIdToFridge < ActiveRecord::Migration
  def change
    add_column :fridges, :family_id, :integer
  end
end
