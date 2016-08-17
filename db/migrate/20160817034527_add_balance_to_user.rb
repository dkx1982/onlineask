class AddBalanceToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :balance, :float, default:0.0
  end
end
