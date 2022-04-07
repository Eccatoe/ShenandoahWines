class CreateUserWines < ActiveRecord::Migration[7.0]
  def change
    create_table :user_wines do |t|
      t.string :name
      t.integer :wine_id
      t.integer :user_id
      t.text :review
    end
  end
end
