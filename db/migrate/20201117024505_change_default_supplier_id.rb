class ChangeDefaultSupplierId < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :supplier_id, :integer, :default => 1
  end
end
