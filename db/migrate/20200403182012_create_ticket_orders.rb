class CreateTicketOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :ticket_orders do |t|
      t.string :date

      t.timestamps
    end
  end
end
