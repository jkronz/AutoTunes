class CreateDjs < ActiveRecord::Migration
  def change
    create_table :djs do |t|
      t.string :code
      t.integer :request_queue_id
      t.integer :played_list_id
      t.string :session_id
      t.string :current_track_id
      t.timestamps
    end

    add_index :djs, :request_queue_id
    add_index :djs, :played_list_id

  end
end
