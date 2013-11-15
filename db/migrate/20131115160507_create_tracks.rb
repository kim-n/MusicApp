class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :track_name, :null => false
      t.integer :album_id, :null => false
      t.text :lyrics

      t.timestamps
    end
    add_index :tracks, :track_name
    add_index :tracks, :album_id
  end
end
