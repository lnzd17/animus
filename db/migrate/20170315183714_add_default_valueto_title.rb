class AddDefaultValuetoTitle < ActiveRecord::Migration[5.0]
  def change
    change_column :projects, :title, :string, :default => "Project"
  end
end
