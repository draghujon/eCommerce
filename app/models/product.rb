class Product < ApplicationRecord
  belongs_to :category

  validates :name, :quantity_per_unit, :unit_price, :unit_stock, presence: true
  validates :quantity_per_unit, :unit_stock, numericality: { only_integer: true }
  validates :unit_price, numericality: { only_decimal: true }
end
