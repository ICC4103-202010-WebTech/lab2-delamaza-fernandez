class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :adress
      t.string :password


      t.timestamps
    end
  end
end
