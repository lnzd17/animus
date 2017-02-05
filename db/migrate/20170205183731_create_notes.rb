class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.text :note
      t.timestamps
      t.integer :project_id
    end
    add_index :notes, :project_id
  end
end
