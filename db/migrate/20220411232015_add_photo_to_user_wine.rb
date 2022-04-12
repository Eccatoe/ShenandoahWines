class AddPhotoToUserWine < ActiveRecord::Migration[7.0]
  add_column :user_wines, :photo, :string
end
