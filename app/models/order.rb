class Order < ApplicationRecord
  belongs_to :customer

  #has_many :products, through: :order_details

  validates :order_date, :ship_name, :ship_address, :ship_date, :ship_postal, :ship_country, presence: true
end
