class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :name
      t.text :description
      t.text :content
      t.string :slug

      t.timestamps null: false
    end
    add_index :achievements, :slug
  end
end
