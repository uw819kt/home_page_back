class CreateProfiles < ActiveRecord::Migration[7.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :description
      t.string :github_url

      t.timestamps
    end
  end
end
