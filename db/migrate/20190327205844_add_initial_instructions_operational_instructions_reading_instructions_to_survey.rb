class AddInitialInstructionsOperationalInstructionsReadingInstructionsToSurvey < ActiveRecord::Migration[5.0]
  def change
    add_column :surveys, :initial_instructions, :boolean, default: true
    add_column :surveys, :operational_instructions, :boolean, default: true
    add_column :surveys, :reading_instructions, :boolean, default: true
  end
end
