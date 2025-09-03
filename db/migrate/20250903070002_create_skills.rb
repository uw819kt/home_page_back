class CreateSkills < ActiveRecord::Migration[7.2]
  def change
    create_table :skills do |t|
      t.string :name, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
