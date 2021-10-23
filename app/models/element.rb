class Element < ApplicationRecord
  has_many :element_positions
  validates :name, :image_url, presence: true
end
