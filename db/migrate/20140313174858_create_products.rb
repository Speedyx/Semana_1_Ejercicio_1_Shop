class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.timestamp :added_at
      t.string :manufacturer
      t.integer :units

      t.timestamps
    end
  end
end
