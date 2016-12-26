class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.float :sum
      t.integer :account_number
      t.references :operation, foreign_key: true

      t.timestamps
    end
  end
end
