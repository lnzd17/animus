class AddDefaultValueToComplete2 < ActiveRecord::Migration[5.0]
  def change
    change_column :projects, :complete, :boolean, :default => false
  end
end
