class ChangeImageUrLtoUrl < ActiveRecord::Migration[6.0]
  def change
    remove_column :images,:image_url,:string
    add_column :images,:url,:string
  end
end
