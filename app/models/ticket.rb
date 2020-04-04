class Ticket < ApplicationRecord
  belongs_to :event
  has_many :shopping_carts
  has_many :ticket_orders, through: :shopping_cart
end
