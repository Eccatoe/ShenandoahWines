class CreateVarietals < ActiveRecord::Migration[7.0]
  def change
    create_table :varietals do |t|
      t.string :name
      t.text :tasting_notes
      t.string :picture
      t.timestamps
    end
  end
end