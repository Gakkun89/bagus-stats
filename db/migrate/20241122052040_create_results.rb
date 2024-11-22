class CreateResults < ActiveRecord::Migration[8.0]
  def change
    create_table :results do |t|
      t.integer :result
      t.text :notes
      t.boolean :completed
      t.boolean :rx

      t.timestamps
    end
  end
end
