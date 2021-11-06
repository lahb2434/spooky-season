class AddImageSizeAndNameToElementPositions < ActiveRecord::Migration[6.1]
  def change
    add_column :element_positions, :image_size, :integer
    add_column :element_positions, :name, :string
  end
end
