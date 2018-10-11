class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.text :description
      t.references :user, foreign_key: true
      t.references :unit, foreign_key: true
      t.references :material, foreign_key: true
      t.float :price, default: 0.0
      t.integer :amount, null: false
      t.datetime :date_publish
      t.datetime :date_finish
      t.text :location, null: false
      t.time :collection_time
      t.boolean :active, default: true
      t.boolean :lock, default: false

      t.timestamps
    end
  end
end
