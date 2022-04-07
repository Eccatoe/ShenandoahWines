class CreateUserWines < ActiveRecord::Migration[7.0]
  def change
    create_table :user_wines do |t|
      t.string :name
      t.integer :wine_id
      t.integer :user_id
      t.text :review
      t.boolean :favorite, default: false
      t.boolean :tasted, default: false
    end
  end
end
