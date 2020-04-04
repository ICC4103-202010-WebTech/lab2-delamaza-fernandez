class TicketOrder < ApplicationRecord
  belongs_to :customer
  has_many :shopping_carts
  has_many :tickets, through: :shopping_cart
end
