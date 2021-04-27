class AddForeignKeysToBookmark < ActiveRecord::Migration[6.0]
  def change
    add_column :bookmarks, :add_foreign_key, :string
    add_column :bookmarks, :, :movie,
    add_column :bookmarks, :, :list
  end
end
