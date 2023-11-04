class RemoveImageFromUnits < ActiveRecord::Migration[7.1]
  def change
    remove_column :units, :image, :text
  end
end
