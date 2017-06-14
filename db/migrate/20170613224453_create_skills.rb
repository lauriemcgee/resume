class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.string :skill_name
      t.integer :user_id

      t.timestamps
    end
  end
end
