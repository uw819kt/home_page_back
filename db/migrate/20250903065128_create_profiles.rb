class CreateProfiles < ActiveRecord::Migration[7.2]
  def change
    create_table :profiles do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :github_url, null: false

      t.timestamps
    end
  end
end
