class CreateExperienceDescriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :experience_descriptions do |t|
      t.integer :experience_id
      t.text :description

      t.timestamps
    end
  end
end
