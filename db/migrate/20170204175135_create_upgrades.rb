class CreateUpgrades < ActiveRecord::Migration[5.0]
  def change
    create_table :upgrades do |t|
      t.string "title"
      t.text "idea"
      t.boolean "complete"
      t.timestamps
    end
  end
end
