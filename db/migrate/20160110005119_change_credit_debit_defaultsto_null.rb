class ChangeCreditDebitDefaultstoNull < ActiveRecord::Migration
  def change
    change_column(:transactions, :credit, true, default = nil)
    change_column(:transactions, :debit, true, default = nil)
  end
end
