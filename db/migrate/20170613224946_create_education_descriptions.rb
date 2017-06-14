class CreateEducationDescriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :education_descriptions do |t|
      t.integer :education_id
      t.text :description

      t.timestamps
    end
  end
end
