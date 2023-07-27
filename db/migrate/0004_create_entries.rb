class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.references :entry_type, null: false, foreign_key: true
      t.decimal :value, null: false
      t.date :date, null: false
      t.string :description, null: false
      t.boolean :effected, default: false

      t.timestamps
    end
  end
end
