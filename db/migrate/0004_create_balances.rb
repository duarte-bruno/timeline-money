class CreateBalances < ActiveRecord::Migration[7.0]
  def change
    create_table :balances do |t|
      t.references :account, null: false, foreign_key: true
      t.decimal :balance, null: false, precision: 15, scale: 2
      t.date :date, null: false

      t.timestamps
    end
  end
end
