class Customer < ApplicationRecord
  has_many :ticket_orders
end
