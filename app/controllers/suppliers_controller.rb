class SuppliersController < ApplicationController

  def index
    suppliers = Supplier.all
    render json: suppliers
  end

  def show
    supplier = Supplier.find(params[:supplier_id])
    render json: supplier
  end
  
end
