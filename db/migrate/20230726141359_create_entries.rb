class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.references :entry_type, null: false, foreign_key: true
      t.decimal :value
      t.date :date
      t.string :description

      t.timestamps
    end
  end
end
