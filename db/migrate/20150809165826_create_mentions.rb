class CreateMentions < ActiveRecord::Migration
  def change
    create_table :mentions do |t|
      t.string :name
      t.text :description
      t.text :content
      t.string :slug
      t.text :url

      t.timestamps null: false
    end
    add_index :mentions, :slug
  end
end
