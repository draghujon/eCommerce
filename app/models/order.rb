class Order < ApplicationRecord
  belongs_to :customer

  validates :order_date, :ship_name, :ship_address, :ship_date, :ship_postal, :ship_country, presence: true
end
