class AddAttributesToProject < ActiveRecord::Migration
  def change
    add_column :projects, :name, :string
    add_column :projects, :description, :text
    add_column :projects, :content, :text
  end
end
