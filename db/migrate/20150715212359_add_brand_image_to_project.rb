class AddBrandImageToProject < ActiveRecord::Migration
  def change
    add_column :projects, :brand_image, :string
  end
end
