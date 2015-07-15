class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :job_title
      t.string :organization_name
      t.text :summary
      t.string :location

      t.timestamps null: false
    end
  end
end
