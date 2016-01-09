class ChangeCreditDebitDefaultsToZero < ActiveRecord::Migration
  def change
    change_column_default(:transactions, :credit, 0)
    change_column_default(:transactions, :debit, 0)
  end
end
