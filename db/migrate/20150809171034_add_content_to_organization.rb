class AddContentToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :content, :text
  end
end
