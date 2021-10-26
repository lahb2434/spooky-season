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
    card = Card.new(card_params)
    if card.save
      render json: card, status: :accepted
    else
      render json: {errors: card.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def card_params
    params.require(:card).permit(:name)
  end

end
