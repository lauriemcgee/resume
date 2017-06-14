class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :company_name
      t.string :role_name
      t.datetime :start_date
      t.datetime :end_date
      t.integer :user_id

      t.timestamps
    end
  end
end
