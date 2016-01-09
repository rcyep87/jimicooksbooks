class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.date :date
      t.float :credit
      t.float :debit
      t.belongs_to :account, index: true, foreign_key: true
      t.belongs_to :payee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
