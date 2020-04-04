class AddColumnToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_column :customer, :password, :string
  end
end
