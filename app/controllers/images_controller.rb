class ImagesController < ApplicationController

  def index
    images = Image.all
    render json: images
  end

  def show
    images = Image.find(params[:id])
    render json: images
  end
  
  def create
    image = Image.new(
      url: params[:url],
      product_id: params[:product_id]
    )
    image.save
    render json: image
  end
end
