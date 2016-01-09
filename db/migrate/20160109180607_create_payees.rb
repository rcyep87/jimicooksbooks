class CreatePayees < ActiveRecord::Migration
  def change
    create_table :payees do |t|
      t.string :name
      t.belongs_to :account, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
