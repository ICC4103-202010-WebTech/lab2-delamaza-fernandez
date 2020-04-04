class CreateShoppingCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :shopping_carts do |t|
      t.numeric :amount

      t.timestamps
    end
  end
end
