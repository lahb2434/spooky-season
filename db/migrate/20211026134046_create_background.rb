class CreateBackground < ActiveRecord::Migration[6.1]
  def change
    create_table :backgrounds do |t|
      t.string :name
      t.belongs_to :card, null: false, foreign_key: true

      t.timestamps
    end
  end
end
