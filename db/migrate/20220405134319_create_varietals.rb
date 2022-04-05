class CreateVarietals < ActiveRecord::Migration[7.0]
  def change
    create_table :varietals do |t|
      t.string :name
      t.string :tasting_notes
      t.boolean :native_grape
      t.timestamps
    end
  end
end
