class ChangeQuantityDataType < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :quantity, :integer, default: 0
  end
end
