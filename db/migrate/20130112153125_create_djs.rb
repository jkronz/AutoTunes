class CreateDjs < ActiveRecord::Migration
  def change
    create_table :djs do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
