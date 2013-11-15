class RenameAlbumVersionColumn < ActiveRecord::Migration
  def change
    rename_column :albums, :version, :album_type
  end
end
