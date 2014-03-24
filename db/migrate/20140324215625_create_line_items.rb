class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :order, index: true
      t.references :product, index: true
      t.integer :units
      t.decimal :price, :precision => 10, :scale => 2

      t.timestamps
    end
  end
end
