class OrdersController < ApplicationController

  def index
    if current_user
      orders = Order.all
      render json: orders 
    else
      render json: {message: "You must be logged in."}
    end
  end

  def create
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity]
    )
      order.subtotal = order.quantity * order.product.price
      order.tax = order.subtotal * 0.09 
      order.total = order.subtotal * order.tax
    if order.save
      render json: order
    else
      render json: order.errors.full_messages
    end
  end

  def show
    if current_user
      order = Order.find(params[:id])
      if order.user_id == current_user.id
        render json: order
      else
        render json: {message: "That's not your order!"}
      end
    else
      render json: {message: "You must be logged in."}
    end
  end

end
