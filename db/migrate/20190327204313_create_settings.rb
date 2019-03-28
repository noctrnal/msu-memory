class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :settings do |t|
      t.integer :delay, default: 1
      t.integer :maximum_value, default: 99
      t.integer :minimum_value, default: 1
      t.integer :surveys

      t.timestamps
    end
  end
end
