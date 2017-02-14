class RemoveColumnFromProjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :note_id
  end
end
