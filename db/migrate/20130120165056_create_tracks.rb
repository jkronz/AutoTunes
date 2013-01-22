class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :artist
      t.string :title
      t.string :uri
      t.integer :position
      t.integer :playlist_id
      t.timestamps
    end
  end
end
