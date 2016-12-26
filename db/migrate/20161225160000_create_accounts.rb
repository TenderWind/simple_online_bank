class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts, id: false do |t|
      t.integer :number
      t.float :balance
      t.primary_key :number
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :accounts, :number
  end
end
