class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.string :school_name
      t.string :degree_name
      t.datetime :start_date
      t.datetime :end_date
      t.integer :user_id

      t.timestamps
    end
  end
end
