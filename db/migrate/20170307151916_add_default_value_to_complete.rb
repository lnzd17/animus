class AddDefaultValueToComplete < ActiveRecord::Migration[5.0]
  def change
    change_column :projects, :complete, :boolean, :default => true
  end
end
