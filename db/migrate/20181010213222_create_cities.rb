class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name, null: false
      t.references :state, foreign_key: true
      t.boolean :lock, default: false

      t.timestamps
    end
  end
end
