class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :state
      t.string :payment
      t.string :address
      t.string :city
      t.string :name
      t.string :surname

      t.timestamps
    end
  end
end
