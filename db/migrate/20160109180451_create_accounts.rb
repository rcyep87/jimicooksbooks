class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :type
      t.float :balance
      t.integer :acct_number

      t.timestamps null: false
    end
  end
end
