class Card < ApplicationRecord
    has_many :card_backgrounds
    has_many :backgrounds, through: :card_backgrounds
    has_many :element_positions
    has_many :elements, through: :element_positions
end
