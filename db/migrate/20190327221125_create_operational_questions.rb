class CreateOperationalQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :operational_questions do |t|
      t.references :operational_survey, foreign_key: true
      t.integer :memory
      t.boolean :veracity
      t.integer :recall
      t.references :equation, foreign_key: true

      t.timestamps
    end
  end
end
