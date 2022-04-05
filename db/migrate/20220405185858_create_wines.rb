class CreateWines < ActiveRecord::Migration[7.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :varietal_id
      t.integer :winery_id
      t.timestamps
    end
  end
end