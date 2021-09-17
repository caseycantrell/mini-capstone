class CartedProductsController < ApplicationController


  def create
    carted = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      order_id: nil,
      status: "carted"
    )
    if carted.save
      render json: carted
    else
      render json: carted.errors.full_messages
    end
  end


  def index
    carted = CartedProduct.all
    render json: carted 
  end

  def update
    carted = CartedProduct.find(params[:id])
    carted.user_id = params[:user_id] || carted.user_id
    carted.product_id = params[:product_id] || carted.product_id
    carted.quantity = params[:quantity] || carted.quantity
    carted.status = "removed"
    if carted.save
      render json: carted
    else
      render json: carted.errors.full_messages, status: :unprocessable_entity
    end
  end

end
