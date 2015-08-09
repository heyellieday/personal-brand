class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.text :description
      t.text :content
      t.text :slug

      t.timestamps null: false
    end
    add_index :skills, :slug
  end
end
