class CardsController < ApplicationController
  
  def spooky_season
    cards = Card.all
    render json: cards
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
