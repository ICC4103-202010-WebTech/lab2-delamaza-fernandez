class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :venue_name
      t.string :adress
      t.numeric :capacity
      t.text :description
      t.string :start_date

      t.timestamps
    end
  end
end
