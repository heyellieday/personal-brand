class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :title
      t.string :created_at_relative
      t.string :created_at_english
      t.string :subtitle
      t.text :excerpt
      t.string :recommends
      t.string :url
      t.string :full_text
      t.string :slug
      t.timestamps null: false
    end
    add_index :posts, :slug, unique: true
  end
end
