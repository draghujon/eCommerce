class Customer < ApplicationRecord
  has_many :orders

  validates :name, :address, :city, :province, :postal_code, :country, :phone, presence: true
end
