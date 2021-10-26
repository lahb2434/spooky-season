class Background < ApplicationRecord
  has_many :card_backgrounds
#   has_many :cards, through: :card_backgrounds
end