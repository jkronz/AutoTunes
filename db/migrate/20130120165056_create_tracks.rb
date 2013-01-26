class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :artist
      t.string :name
      t.string :uri
      t.integer :position
      t.integer :length
      t.integer :playlist_id
      t.timestamps
    end
  end
end
