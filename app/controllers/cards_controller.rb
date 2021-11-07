class CardsController < ApplicationController
  
  def index
    cards = Card.all

    render json: cards.as_json( only: [:name],
      include: { 
        element_positions: { 
          only: [:id, :xPosition, :yPosition, :xOffset, :yOffset, :element_id, :imageSize, :name ]
        },
        backgrounds: {
          only: [:id, :name]
        }
      }
    )
  end

  def create
   
    card = Card.new(name: card_params[:name])
    background = Background.find(card_params[:background])
    card.backgrounds = [background]
    card_params[:card_elements].each do |element_attributes|
      element_position = card.element_positions.new(element_attributes)
      element = Element.all.detect{|x| x.name == element_attributes[:name][0..-3]}
      element_position.element = element
    end
  
    if card.save
      render json: card, status: :accepted
    else
      render json: {errors: card.errors.full_messages}, status: :unprocessible_entity
    end
  end

  

  private

  def card_params
    params.require(:card).permit(:name, :background, card_elements: [:name, :xOffset, :yOffset, :imageSize, :xPosition, :yPosition])
  end

end

