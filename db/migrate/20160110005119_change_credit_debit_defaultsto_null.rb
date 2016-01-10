class ChangeCreditDebitDefaultstoNull < ActiveRecord::Migration
  def change
    change_column_null(:transactions, :credit, true, default = nil)
    change_column_null(:transactions, :debit, true, default = nil)
  end
end
