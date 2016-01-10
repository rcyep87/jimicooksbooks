class RemoveDefaultFromCreditDebit < ActiveRecord::Migration
  def change
    change_column_default(:transactions, :credit, nil)
    change_column_default(:transactions, :debit, nil)
  end
end
