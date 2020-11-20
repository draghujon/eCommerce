class Customer < ApplicationRecord
  has_many :orders

  has_one_attached :image

  accepts_nested_attributes_for :orders, allow_destroy: true

  validates :name, :address, :city, :province, :postal_code, :country, presence: true
end
