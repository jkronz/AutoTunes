class CreateDjs < ActiveRecord::Migration
  def change
    create_table :djs do |t|
      t.string :code
      t.string :name
      t.integer :generated_playlist_id
      t.integer :requested_playlist_id
      t.timestamps
    end
  end
end
