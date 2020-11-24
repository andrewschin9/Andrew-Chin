class Api::OrdersController < ApplicationController
  before_action :authenticate_user, only: [:create, :index]
  

  def index
    @order = Order.where(user_id:current_user.id)
    render "index.json.jb"
  end
  
  def create
    @order = Order.new(
      user_id: current_user.id,
      product_id: Product.find_by(title: params[:name_of_product]).id,
      quantity: params[:quantity],
      subtotal: params[:quantity].to_i*Product.find_by(title: params[:name_of_product]).price,
      tax: Product.find_by(title: params[:name_of_product]).tax,
      total: params[:quantity].to_i*Product.find_by(title: params[:name_of_product]).price+Product.find_by(title: params[:name_of_product]).tax
    )
    
    @order.save
    render "orders.json.jb"
  
  end
end


# Product.find_by(title: params[:name_of_product]).price*params[:quantity.to_i]