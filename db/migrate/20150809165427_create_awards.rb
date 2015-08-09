class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.string :name
      t.text :description
      t.text :content
      t.string :slug
      t.string :url

      t.timestamps null: false
    end
    add_index :awards, :slug
  end
end
