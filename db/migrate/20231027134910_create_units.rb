class CreateUnits < ActiveRecord::Migration[7.1]
  def change
    create_table :units do |t|
      t.text :name
      t.text :description
      t.text :image
      t.integer :price
      t.text :type
      t.text :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
