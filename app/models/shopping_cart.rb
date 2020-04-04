class ShoppingCart < ApplicationRecord
  belongs_to :ticket_order
  belongs_to :ticket
end
