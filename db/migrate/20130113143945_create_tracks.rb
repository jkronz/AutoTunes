class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :uri
      t.string :title
      t.string :artist
      t.integer :playlist_id
      t.integer :position
      t.boolean :played, :default => false
      t.timestamps
    end
    add_index :tracks, :playlist_id
  end
end
