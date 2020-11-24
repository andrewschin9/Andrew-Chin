class Api::ProductsController < ApplicationController
  def sample_action
    @product = params[:product]
    
    @product = Product[]
    render "products.json.jb"
  end

  def index
    # @product = Product.all
    search_term = params[:search]
    if search_term
      @products = Product.where("id > '#{search_term}'").order("id ASC")
    else
      @products = Product.all
    end

    @products = @products.order(id: :desc)

    render "index.json.jb"
  end

  def create
    #makes new products
    @product = Product.new(
      title: params[:title],
      price: params[:price],
      image_url:params[:image_url], 
      description: params[:description],
      inventory: params[:inventory]
      )
      
      if @product.save
        render "products.json.jb"
      else
        render json: {errors: @product.errors.full_messages}
      end
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "products.json.jb"
  end

  def delete
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render "products_destroy.json.jb"
  end
end