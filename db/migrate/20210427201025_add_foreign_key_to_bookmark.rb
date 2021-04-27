class AddForeignKeyToBookmark < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :bookmark, :list_id
    add_foreign_key :bookmark, :movie_id
  end
end
