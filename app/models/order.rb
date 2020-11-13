class Order < ApplicationRecord
  belongs_to :customer

  has_many :order_details
  has_many :products, through: :order_details

  accepts_nested_attributes_for :order_details, allow_destroy: true
  accepts_nested_attributes_for :products, allow_destroy: true

  validates :order_date, :ship_name, :ship_address, :ship_date, :ship_postal, :ship_country, presence: true
end
