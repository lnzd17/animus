class ChangeNoteName < ActiveRecord::Migration[5.0]
  def change
    rename_column :notes, :note, :note_text
  end
end
