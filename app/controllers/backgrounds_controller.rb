class BackgroundsController < ApplicationController
  
    def index
      backgrounds = Background.all
  
      render json: backgrounds.to_json(:only => [:id, :name, :image_url])
    end
  
    def create
      background = Background.new(background_params)
      if background.save
        render json: background, status: :accepted
      else
        render json: {errors: background.errors.full_messages}, status: :unprocessible_entity
      end
    end
  
    private
  
    def background_params
      params.require(:background).permit(:name, :image_url)
    end
  
  end