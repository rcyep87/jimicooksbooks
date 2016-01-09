class AddForeignKeyFromUserToAccount < ActiveRecord::Migration
  def change
    change_table(:accounts) do |t|
      t.belongs_to :user
    end
  end
end
