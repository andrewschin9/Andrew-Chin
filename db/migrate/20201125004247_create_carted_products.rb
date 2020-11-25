class CreateCartedProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :carted_products do |t|
      t.integer :product_id
      t.integer :quantity
      t.integer :price
      t.integer :user_id
      t.string :product_name
      t.integer :order_id

      t.timestamps
    end
  end
end
