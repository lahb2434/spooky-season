class AddImageUrlToBackground < ActiveRecord::Migration[6.1]
  def change
    add_column :backgrounds, :image_url, :string
  end
end
