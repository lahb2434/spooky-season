class CardsController < ApplicationController
  
  def index
    cards = Card.all

    render json: cards.as_json( :only => [:name],
      :include => { 
        :element_positions => { 
          :include => { 
            :element => { :only => [:name, :image_url] }
          },
        :only => [:x_position, :y_position]
        }
      } 
    )
  end

  def create
    byebug
    # mark = Element.all.detect{|x| x.name == card_params[:card_elements][0][:name].gsub(/[_\d]/, '')}
    card = Card.new(card_params)
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

