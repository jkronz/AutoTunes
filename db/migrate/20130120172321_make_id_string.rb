class MakeIdString < ActiveRecord::Migration
  def up
    change_column :djs, :id, :string
    remove_column :djs, :code
  end

  def down
    change_column :djs, :id, :integer
    add_column :djs, :code, :string
  end
end
