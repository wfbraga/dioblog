class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :name
      t.integer :rate
      t.string :description
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
