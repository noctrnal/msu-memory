class CreateOperationalSurveys < ActiveRecord::Migration[5.0]
  def change
    create_table :operational_surveys do |t|
      t.references :survey, foreign_key: true
      t.integer :span

      t.timestamps
    end
  end
end
