class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.decimal :balance, null: false, precision: 15, scale: 2

      t.timestamps
    end
  end
end
