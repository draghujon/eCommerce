class Customer < ApplicationRecord
  has_many :orders
  #has_many :order_details, through: :orders

  accepts_nested_attributes_for :orders, allow_destroy: true

  validates :name, :address, :city, :province, :postal_code, :country, :phone, presence: true
end
