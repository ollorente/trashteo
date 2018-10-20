class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.text :comment, null: false
      t.boolean :active, default: true
      t.boolean :lock, default: false

      t.timestamps
    end
  end
end
