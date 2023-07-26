class CreateEntryTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :entry_types do |t|
      t.string :name, null: false

      t.timestamps
    end
    add_index :entry_types, :name, unique: true
  end
end
