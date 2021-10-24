class AddOffsetsToElementPositions < ActiveRecord::Migration[6.1]
  def change
    add_column :element_positions, :x_offset, :integer
    add_column :element_positions, :y_offset, :integer
  end
end
