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

  def update
    image = Image.find(params[:id])
    image.url = params[:url] || image.url
   
    if image.save
      render json: image
    else
      render json: image.errors.full_messages, status: :unprocessable_entity
    end
  end

end
