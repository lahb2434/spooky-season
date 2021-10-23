class Card < ApplicationRecord
    has_many :element_positions
    has_many :elements, through: :element_positions
end
