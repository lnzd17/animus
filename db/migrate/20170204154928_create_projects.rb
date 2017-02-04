class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :note
      t.string :label
      t.integer :priority
      t.timestamps
    end
  end
end
