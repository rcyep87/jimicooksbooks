class ChangeColumnNameAccount < ActiveRecord::Migration
  def change
    rename_column :accounts, :type, :acct_type
  end
end
