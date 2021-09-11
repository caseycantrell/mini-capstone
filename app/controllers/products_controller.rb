class ProductsController < ApplicationController

  def index
    if current_user
      products = Product.all
      render json: products
    else 
      render json: {message: "You ain't even logged in dude."}
    end
  end

  def show
    if current_user
      product = Product.find(params[:id])
      render json: product
    else 
      render json: {message: "You must be logged in to continue."}
    end
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      quantity: params[:quantity],
      supplier_id: params[:supplier_id]
    )
    if product.save
      render json: product
    else
      render json: product.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.quantity = params[:quantity] || product.quantity
    product.supplier_id = params[:supplier_id] || product.supplier_id
    if product.save
      render json: product
    else
      render json: product.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "That product has been ABSOLUTELY DECIMATED"}
  end
  
end