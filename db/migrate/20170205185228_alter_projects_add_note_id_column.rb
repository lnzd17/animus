class AlterProjectsAddNoteIdColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :note_id, :integer
    add_index :projects, :note_id
  end
end
