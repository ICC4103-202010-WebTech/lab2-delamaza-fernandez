class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :tickets, :type, :tipo
  end
end
