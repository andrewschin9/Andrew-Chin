class Api::CartedproductsController < ApplicationController
  def index
    @carted_product = CartedProduct.where(user_id:1)
    render "index_cart.json.jb"
  end
  
  def create
    @carted_product = CartedProduct.new(
    product_id: 
    quantity: 
    price: 15
    user_id: current_user.id
    product_name: Product.
    order_id:
    status:
    )
    
    # @carted_product.save
end
