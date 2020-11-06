class Product < ApplicationRecord
  belongs_to :category
  paginates_per 25

  has_many :order_details
  has_many :orders, through: :order_details

  accepts_nested_attributes_for :order_details, allow_destroy: true

  validates :name, :quantity_per_unit, :unit_price, :unit_stock, presence: true
  validates :quantity_per_unit, :unit_stock, numericality: { only_integer: true }
  validates :unit_price, numericality: { only_decimal: true }
end
