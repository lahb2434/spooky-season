class DropCbs < ActiveRecord::Migration[6.1]
  def change
    drop_table :cbs
  end
end
