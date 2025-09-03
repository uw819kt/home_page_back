class CreateProjects < ActiveRecord::Migration[7.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.text :tech_stack
      t.string :status
      t.string :github_url
      t.string :demo_url

      t.timestamps
    end
  end
end
