class Product < ApplicationRecord
  belongs_to :category
  paginates_per 25

  has_many :order_details
  has_many :orders, through: :order_details
  #scope :recents, lambda { where('created_at > ?', Time.now - 1.week)}
  #scope :updated, lambda { where('updated_at > ?', Time.now - 1.week)}
  accepts_nested_attributes_for :order_details, allow_destroy: true

  validates :name, :quantity_per_unit, :unit_price, :unit_stock, presence: true
  validates :quantity_per_unit, :unit_stock, numericality: { only_integer: true }
  validates :unit_price, numericality: { only_decimal: true, greater_than_or_equal_to: 0 }
end
