class CreateSentences < ActiveRecord::Migration[5.0]
  def change
    create_table :sentences do |t|
      t.text :sentence
      t.boolean :veracity

      t.timestamps
    end
  end
end
