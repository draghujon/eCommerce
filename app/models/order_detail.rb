class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validates :unit_price, :quantity, presence: true
  validates :unit_price, numericality: { only_decimal: true }
end
