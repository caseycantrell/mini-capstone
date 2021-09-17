class CartedProduct < ApplicationRecord

  belongs_to :product
  belongs_to :user
  belongs_to :order, optional: true

  has_many :carted_products
  
end
