class CartedProductSerializer < ActiveModel::Serializer

  attributes :id, :user_id, :quantity, :status, :order_id

  belongs_to :product

end
