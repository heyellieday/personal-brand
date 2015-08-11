class AddDateToAchievement < ActiveRecord::Migration
  def change
    add_column :achievements, :date, :string
  end
end
