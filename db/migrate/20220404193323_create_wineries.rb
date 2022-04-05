class CreateWineries < ActiveRecord::Migration[7.0]
  def change
    create_table :wineries do |t|
      t.string :name
      t.string :link
      t.string :image
      t.string :address
      t.text :varietals
      t.text :description
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
