class AddDefaultValueToPriority < ActiveRecord::Migration[5.0]
  def change
    change_column :projects, :priority, :integer, :default => 1
  end
end
