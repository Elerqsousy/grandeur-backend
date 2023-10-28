class ChangeCulomNameOnUnit < ActiveRecord::Migration[7.1]
  def change
    rename_column :units, :type, :unit_type
  end
end
