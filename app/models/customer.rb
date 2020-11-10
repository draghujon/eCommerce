class Customer < ApplicationRecord
  has_many :orders
  # has_many :order_details, through: :orders
  has_one_attached :image
  accepts_nested_attributes_for :orders, allow_destroy: true

  validates :name, :address, :city, :province, :postal_code, :country, :phone, :image, presence: true
end
