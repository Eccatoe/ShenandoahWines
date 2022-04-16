class CreateTrailStops < ActiveRecord::Migration[7.0]
  def change
    create_table :trail_stops do |t|
      t.belongs_to :trail, null: false, foreign_key: true
      t.belongs_to :winery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
