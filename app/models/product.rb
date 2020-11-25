class Product < ApplicationRecord
  validates :title, :description, :price, presence: true
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products  
  has_many :carted_product
  
  
  def tax
    price*0.09
  end

  def is_discounted?
    if price < 10
    end
  end

  def supplier_name
    Supplier.find_by(supplier_id: :id)
  end

  # def images
  #   Image.where(product_id: :id)
  # end
end
