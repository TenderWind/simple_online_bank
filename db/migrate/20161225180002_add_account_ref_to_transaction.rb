class AddAccountRefToTransaction < ActiveRecord::Migration[5.0]
  def change
    add_reference :transactions, :accounts
    add_foreign_key :transactions, :accounts, column: :account_number, primary_key: :number
  end
end
