class CreateDjs < ActiveRecord::Migration
  def change
    create_table :djs do |t|
      t.string :code
      t.integer :request_queue_id
      t.integer :played_list_id
      t.string :session_id
      t.timestamps
    end
  end
end
