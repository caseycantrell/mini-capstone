class Product < ApplicationRecord
  
  belongs_to :supplier
  has_many :images
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :carted_products
  has_many :orders, through: :carted_products


  validates :name, :description, :quantity, presence: true
  validates :name, uniqueness: true
  validates :description, length: { minimum: 10 }
  validates :description, length: { maximum: 500 }
  validates :price, numericality: { less_than: 9999999.99 }
  validates :price, numericality: { greater_than: 0 }

  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

end