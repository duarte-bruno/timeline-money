class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.references :entry_type, null: false, foreign_key: true
      t.references :account, null: false, foreign_key: true
      t.references :entry, null: false, foreign_key: true
      t.decimal :value, null: false, precision: 15, scale: 2
      t.decimal :estimated_value, null: false, precision: 15, scale: 2
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.string :recurrence_time, null: true
      t.string :recurrence_day, null: true
      t.string :description, null: false
      t.boolean :listed, default: true

      t.timestamps
    end
  end
end
