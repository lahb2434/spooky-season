class ElementsController < ApplicationController
  
    def index
      elements = Element.all
  
      render json: elements.to_json(:only => [:name, :image_url])
    end
  
    def create
      element = Element.new(element_params)
      if element.save
        render json: element, status: :accepted
      else
        render json: {errors: element.errors.full_messages}, status: :unprocessible_entity
      end
    end
  
    private
  
    def element_params
      params.require(:element).permit(:name, :image_url)
    end
  
  end