class CreateUnits < ActiveRecord::Migration[7.1]
  def change
    create_table :units do |t|
      t.text :name, null: false
      t.text :description, default: "", null: false
      t.text :image, array: true, default: []
      t.integer :price, null: false
      t.text :type, null: false
      t.text :location, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
