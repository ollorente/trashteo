class CreateQualifications < ActiveRecord::Migration[5.2]
  def change
    create_table :qualifications do |t|
      t.references :transaction, foreign_key: true
      t.integer :value
      t.text :feedback
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
